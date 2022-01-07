
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_compress_destSize_extState (void*,char const*,char*,int*,int) ;

int LZ4_compress_destSize(
 const char *src,
 char *dst,
 int *srcSizePtr,
 int targetDstSize,
 void *wrkmem)
{
 return LZ4_compress_destSize_extState(wrkmem, src, dst, srcSizePtr,
  targetDstSize);
}
