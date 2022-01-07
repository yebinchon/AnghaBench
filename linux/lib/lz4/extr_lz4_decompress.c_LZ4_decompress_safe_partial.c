
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int LZ4_decompress_generic (char const*,char*,int,int,int ,int ,int ,int *,int *,int ) ;
 int endOnInputSize ;
 int min (int,int) ;
 int noDict ;
 int partial_decode ;

int LZ4_decompress_safe_partial(const char *src, char *dst,
 int compressedSize, int targetOutputSize, int dstCapacity)
{
 dstCapacity = min(targetOutputSize, dstCapacity);
 return LZ4_decompress_generic(src, dst, compressedSize, dstCapacity,
          endOnInputSize, partial_decode,
          noDict, (BYTE *)dst, ((void*)0), 0);
}
