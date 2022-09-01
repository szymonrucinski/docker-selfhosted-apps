#delete trusted domain 1, 2, 3
docker exec -u www-data nextcloud_app_1 php -f /var/www/html/occ config:system:delete trusted_domains 1
docker exec -u www-data nextcloud_app_1 php -f /var/www/html/occ config:system:delete trusted_domains 2
docker exec -u www-data nextcloud_app_1 php -f /var/www/html/occ config:system:delete trusted_domains 3

#set new trusted domain 1, 2, 3
docker exec -u www-data nextcloud_app_1 php -f /var/www/html/occ config:system:set trusted_domains 1 --value=$domain_one
docker exec -u www-data nextcloud_app_1 php -f /var/www/html/occ config:system:set trusted_domains 2 --value=$domain_two
docker exec -u www-data nextcloud_app_1 php -f /var/www/html/occ config:system:set trusted_domains 2 --value=$domain_three

#'overwriteprotocol' => 'https',
docker exec -u www-data nextcloud_app_1 php -f /var/www/html/occ config:system:set overwriteprotocol --value=https
#'overwrite.cli.url' => 'example.com',
docker exec -u www-data nextcloud_app_1 php -f /var/www/html/occ config:system:set overwrite.cli.url --value=$domain_three




