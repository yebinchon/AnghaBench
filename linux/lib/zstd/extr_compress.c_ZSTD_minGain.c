
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t ZSTD_minGain(size_t srcSize) { return (srcSize >> 6) + 2; }
