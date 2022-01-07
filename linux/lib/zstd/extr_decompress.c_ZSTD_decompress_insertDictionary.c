
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int litEntropy; int fseEntropy; int entropy; void* dictID; } ;
typedef TYPE_1__ ZSTD_DCtx ;
typedef scalar_t__ U32 ;


 size_t ERROR (int ) ;
 scalar_t__ const ZSTD_DICT_MAGIC ;
 scalar_t__ ZSTD_isError (size_t const) ;
 size_t ZSTD_loadEntropy (int *,void const*,size_t) ;
 void* ZSTD_readLE32 (char const*) ;
 size_t ZSTD_refDictContent (TYPE_1__*,void const*,size_t) ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t ZSTD_decompress_insertDictionary(ZSTD_DCtx *dctx, const void *dict, size_t dictSize)
{
 if (dictSize < 8)
  return ZSTD_refDictContent(dctx, dict, dictSize);
 {
  U32 const magic = ZSTD_readLE32(dict);
  if (magic != ZSTD_DICT_MAGIC) {
   return ZSTD_refDictContent(dctx, dict, dictSize);
  }
 }
 dctx->dictID = ZSTD_readLE32((const char *)dict + 4);


 {
  size_t const eSize = ZSTD_loadEntropy(&dctx->entropy, dict, dictSize);
  if (ZSTD_isError(eSize))
   return ERROR(dictionary_corrupted);
  dict = (const char *)dict + eSize;
  dictSize -= eSize;
 }
 dctx->litEntropy = dctx->fseEntropy = 1;


 return ZSTD_refDictContent(dctx, dict, dictSize);
}
