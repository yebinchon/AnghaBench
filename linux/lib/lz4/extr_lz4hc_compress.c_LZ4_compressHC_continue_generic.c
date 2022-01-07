
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int limitedOutput_directive ;
typedef int U32 ;
struct TYPE_9__ {size_t dictLimit; int lowLimit; int compressionLevel; int const* dictBase; int const* end; int const* base; } ;
struct TYPE_8__ {TYPE_2__ internal_donotuse; } ;
typedef TYPE_1__ LZ4_streamHC_t ;
typedef TYPE_2__ LZ4HC_CCtx_internal ;
typedef int const BYTE ;


 int GB ;
 int KB ;
 int LZ4HC_compress_generic (TYPE_2__*,char const*,char*,int,int,int ,int ) ;
 int LZ4HC_init (TYPE_2__*,int const*) ;
 int LZ4HC_setExternalDict (TYPE_2__*,int const*) ;
 int LZ4_loadDictHC (TYPE_1__*,char const*,int) ;

__attribute__((used)) static int LZ4_compressHC_continue_generic(
 LZ4_streamHC_t *LZ4_streamHCPtr,
 const char *source,
 char *dest,
 int inputSize,
 int maxOutputSize,
 limitedOutput_directive limit)
{
 LZ4HC_CCtx_internal *ctxPtr = &LZ4_streamHCPtr->internal_donotuse;


 if (ctxPtr->base == ((void*)0))
  LZ4HC_init(ctxPtr, (const BYTE *) source);


 if ((size_t)(ctxPtr->end - ctxPtr->base) > 2 * GB) {
  size_t dictSize = (size_t)(ctxPtr->end - ctxPtr->base)
   - ctxPtr->dictLimit;
  if (dictSize > 64 * KB)
   dictSize = 64 * KB;
  LZ4_loadDictHC(LZ4_streamHCPtr,
   (const char *)(ctxPtr->end) - dictSize, (int)dictSize);
 }


 if ((const BYTE *)source != ctxPtr->end)
  LZ4HC_setExternalDict(ctxPtr, (const BYTE *)source);


 {
  const BYTE *sourceEnd = (const BYTE *) source + inputSize;
  const BYTE * const dictBegin = ctxPtr->dictBase + ctxPtr->lowLimit;
  const BYTE * const dictEnd = ctxPtr->dictBase + ctxPtr->dictLimit;

  if ((sourceEnd > dictBegin)
   && ((const BYTE *)source < dictEnd)) {
   if (sourceEnd > dictEnd)
    sourceEnd = dictEnd;
   ctxPtr->lowLimit = (U32)(sourceEnd - ctxPtr->dictBase);

   if (ctxPtr->dictLimit - ctxPtr->lowLimit < 4)
    ctxPtr->lowLimit = ctxPtr->dictLimit;
  }
 }

 return LZ4HC_compress_generic(ctxPtr, source, dest,
  inputSize, maxOutputSize, ctxPtr->compressionLevel, limit);
}
