// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Library3",
    products: [
        .library(
            name: "Library3",
            targets: ["Library3"]
        ),
    ],
    dependencies: [
      .package(url: "https://github.com/zunda-pixel/Library1", branch: "main"),
      .package(url: "https://github.com/zunda-pixel/Library2", branch: "main"),
    ],
    targets: [
        .target(
            name: "Library3",
            dependencies: [
              .product(name: "Library1", package: "Library1", moduleAliases: ["HTTPClient": "HTTPClient1"]),
              .product(name: "Library2", package: "Library2", moduleAliases: ["HTTPClient": "HTTPClient2"])
            ]
        ),
        .testTarget(
            name: "Library3Tests",
            dependencies: ["Library3"]
        ),
    ]
)
