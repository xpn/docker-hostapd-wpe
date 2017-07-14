echo "Killing network-manager"
sudo airmon-ng check kill

echo "Starting docker container"
docker run --rm -it -v $(pwd)/conf:/conf/ --net=host --privileged xpn/docker-hostapd
