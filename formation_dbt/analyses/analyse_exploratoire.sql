-- SELECT * FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet' LIMIT 10;
-- select COUNT(*) FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet' ;

-- SELECT * FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet' 

-- SELECT VendorID, COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
-- GROUP BY VendorID
-- ORDER BY 1;

-- SELECT RateCodeID, COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
-- GROUP BY RateCodeID
-- ORDER BY 1;

-- SELECT store_and_fwd_flag, COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
-- GROUP BY store_and_fwd_flag
-- ORDER BY 1;

-- SELECT payment_type, COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
-- GROUP BY payment_type
-- ORDER BY 1;

-- SELECT PULocationID, COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
-- GROUP BY PULocationID
-- ORDER BY 1;

-- SELECT DOLocationID, COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet'
-- GROUP BY DOLocationID
-- ORDER BY 1;


-- identifier les trajets abérants

-- SELECT COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-11.parquet'
-- WHERE tpep_pickup_datetime > tpep_dropoff_datetime;

-- SELECT *
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-11.parquet'
-- WHERE tpep_pickup_datetime > tpep_dropoff_datetime LIMIT 10;

-- SELECT COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-11.parquet'
-- WHERE trip_distance <= 0;

-- SELECT *
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-11.parquet'
-- WHERE trip_distance <= 0 LIMIT 10;

-- SELECT COUNT(*) AS trip_count
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-11.parquet'
-- WHERE total_amount <= 0;

-- SELECT *
-- FROM 'https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-11.parquet'
-- WHERE total_amount <= 0 LIMIT 10;

-- conclusions : 
-- - Il y a des trajets avec une distance négative
-- - Il y a des trajets avec un montant total négatif ou nul

-- .read './analyses/analyse_exploratoire.sql'