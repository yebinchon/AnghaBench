
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_compress_fast_extState (void*,char const*,char*,int,int,int) ;

int LZ4_compress_fast(const char *source, char *dest, int inputSize,
 int maxOutputSize, int acceleration, void *wrkmem)
{
 return LZ4_compress_fast_extState(wrkmem, source, dest, inputSize,
  maxOutputSize, acceleration);
}
