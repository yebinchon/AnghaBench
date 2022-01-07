
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DDict ;
typedef int ZSTD_DCtx ;
typedef int U32 ;
typedef void BYTE ;


 int CHECK_F (int ) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 void* ZSTD_DDictDictContent (int const*) ;
 size_t ZSTD_DDictDictSize (int const*) ;
 int ZSTD_MAGICNUMBER ;
 int ZSTD_MAGIC_SKIPPABLE_START ;
 int ZSTD_checkContinuity (int *,void*) ;
 int ZSTD_decompressBegin_usingDict (int *,void const*,size_t) ;
 size_t ZSTD_decompressFrame (int *,void*,size_t,void const**,size_t*) ;
 size_t ZSTD_frameHeaderSize_prefix ;
 scalar_t__ ZSTD_isError (size_t const) ;
 size_t ZSTD_readLE32 (void const*) ;
 int ZSTD_refDDict (int *,int const*) ;
 size_t ZSTD_skippableHeaderSize ;
 int prefix_unknown ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_decompressMultiFrame(ZSTD_DCtx *dctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize, const void *dict, size_t dictSize,
     const ZSTD_DDict *ddict)
{
 void *const dststart = dst;

 if (ddict) {
  if (dict) {

   return ERROR(GENERIC);
  }

  dict = ZSTD_DDictDictContent(ddict);
  dictSize = ZSTD_DDictDictSize(ddict);
 }

 while (srcSize >= ZSTD_frameHeaderSize_prefix) {
  U32 magicNumber;

  magicNumber = ZSTD_readLE32(src);
  if (magicNumber != ZSTD_MAGICNUMBER) {
   if ((magicNumber & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {
    size_t skippableSize;
    if (srcSize < ZSTD_skippableHeaderSize)
     return ERROR(srcSize_wrong);
    skippableSize = ZSTD_readLE32((const BYTE *)src + 4) + ZSTD_skippableHeaderSize;
    if (srcSize < skippableSize) {
     return ERROR(srcSize_wrong);
    }

    src = (const BYTE *)src + skippableSize;
    srcSize -= skippableSize;
    continue;
   } else {
    return ERROR(prefix_unknown);
   }
  }

  if (ddict) {

   ZSTD_refDDict(dctx, ddict);
  } else {


   CHECK_F(ZSTD_decompressBegin_usingDict(dctx, dict, dictSize));
  }
  ZSTD_checkContinuity(dctx, dst);

  {
   const size_t res = ZSTD_decompressFrame(dctx, dst, dstCapacity, &src, &srcSize);
   if (ZSTD_isError(res))
    return res;


   dst = (BYTE *)dst + res;
   dstCapacity -= res;
  }
 }

 if (srcSize)
  return ERROR(srcSize_wrong);

 return (BYTE *)dst - (BYTE *)dststart;
}
