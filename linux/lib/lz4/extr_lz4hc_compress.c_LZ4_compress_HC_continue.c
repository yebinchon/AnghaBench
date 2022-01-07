
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_streamHC_t ;


 int LZ4_compressBound (int) ;
 int LZ4_compressHC_continue_generic (int *,char const*,char*,int,int,int ) ;
 int limitedOutput ;
 int noLimit ;

int LZ4_compress_HC_continue(
 LZ4_streamHC_t *LZ4_streamHCPtr,
 const char *source,
 char *dest,
 int inputSize,
 int maxOutputSize)
{
 if (maxOutputSize < LZ4_compressBound(inputSize))
  return LZ4_compressHC_continue_generic(LZ4_streamHCPtr,
   source, dest, inputSize, maxOutputSize, limitedOutput);
 else
  return LZ4_compressHC_continue_generic(LZ4_streamHCPtr,
   source, dest, inputSize, maxOutputSize, noLimit);
}
