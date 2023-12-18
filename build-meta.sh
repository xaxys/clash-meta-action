#/bin/sh
git clone https://github.com/clash-next/clash-meta -b Meta clash-meta-meta && \
docker run --rm --privileged -e CGO_ENABLED=1 -e GOPROXY=https://goproxy.cn,direct -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/go/src/app -v /usr:/sysroot/usr -w /go/src/app/clash-meta-meta goreleaser/goreleaser-cross:v1.21.4 release -f ../.goreleaser.yml --snapshot --clean
