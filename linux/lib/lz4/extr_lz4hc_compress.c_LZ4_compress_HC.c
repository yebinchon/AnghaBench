
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_compress_HC_extStateHC (void*,char const*,char*,int,int,int) ;

int LZ4_compress_HC(const char *src, char *dst, int srcSize,
 int maxDstSize, int compressionLevel, void *wrkmem)
{
 return LZ4_compress_HC_extStateHC(wrkmem, src, dst,
  srcSize, maxDstSize, compressionLevel);
}
