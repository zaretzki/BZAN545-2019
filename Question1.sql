#Look at hive_tg_3_27_17.ppt pages 14-15
#Load the hh_demographic.csv and transactions.csv into hdfs in an appropriate directory.
#Also load product.csv


#Be careful when loading .csv files into hive tables.  
#The first line of the .csv is a header.  
#Remove the header using a scripting approach 
#or Google tblproperties("skip.header.line.count"="1")

# Create hh_demographic table.

Create database journey;
Use journey;
CREATE TABLE IF NOT EXISTS hh_demographic
(AGE_DESC VARCHAR(45),
MARITAL_STATUS_CODE VARCHAR(10),
INCOME_DESC VARCHAR(15),
HOMEOWNER_DESC VARCHAR(45),
HH_COMP_DESC VARCHAR(45),
HOUSEHOLD_SIZE_DESC VARCHAR(20),
KID_CATEGORY_DESC VARCHAR(5),
HOUSEHOLD_KEY  BIGINT ) 
COMMENT 'Household Demographics in Journey' 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH 'hh_demographic.csv' OVERWRITE INTO TABLE hh_demographic;;

# Create a transaction table here. 
