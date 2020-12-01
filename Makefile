# Create only image.
docker_build:
	docker build --no-cache --rm -m 2G --network=host --add-host=privoxy:192.168.1.12 -t yvv4docker/pyanalyse -f Dockerfile.jupiter .

compose_run:
	docker-compose up -d

compose_stop:
	docker-compose stop

compose_rm:
	docker-compose rm