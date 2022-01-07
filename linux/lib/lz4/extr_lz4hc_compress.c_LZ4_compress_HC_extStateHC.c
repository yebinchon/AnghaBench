
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ state ;
struct TYPE_2__ {int internal_donotuse; } ;
typedef TYPE_1__ LZ4_streamHC_t ;
typedef int LZ4HC_CCtx_internal ;
typedef int BYTE ;


 int LZ4HC_compress_generic (int *,char const*,char*,int,int,int,int ) ;
 int LZ4HC_init (int *,int const*) ;
 int LZ4_compressBound (int) ;
 int limitedOutput ;
 int noLimit ;

__attribute__((used)) static int LZ4_compress_HC_extStateHC(
 void *state,
 const char *src,
 char *dst,
 int srcSize,
 int maxDstSize,
 int compressionLevel)
{
 LZ4HC_CCtx_internal *ctx = &((LZ4_streamHC_t *)state)->internal_donotuse;

 if (((size_t)(state)&(sizeof(void *) - 1)) != 0) {



  return 0;
 }

 LZ4HC_init(ctx, (const BYTE *)src);

 if (maxDstSize < LZ4_compressBound(srcSize))
  return LZ4HC_compress_generic(ctx, src, dst,
   srcSize, maxDstSize, compressionLevel, limitedOutput);
 else
  return LZ4HC_compress_generic(ctx, src, dst,
   srcSize, maxDstSize, compressionLevel, noLimit);
}
