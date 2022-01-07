
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dictID; scalar_t__ checksumFlag; } ;
struct TYPE_4__ {scalar_t__ dictID; int xxhState; TYPE_2__ fParams; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 size_t ERROR (int ) ;
 size_t ZSTD_getFrameParams (TYPE_2__*,void const*,size_t) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int dictionary_wrong ;
 int srcSize_wrong ;
 int xxh64_reset (int *,int ) ;

__attribute__((used)) static size_t ZSTD_decodeFrameHeader(ZSTD_DCtx *dctx, const void *src, size_t headerSize)
{
 size_t const result = ZSTD_getFrameParams(&(dctx->fParams), src, headerSize);
 if (ZSTD_isError(result))
  return result;
 if (result > 0)
  return ERROR(srcSize_wrong);
 if (dctx->fParams.dictID && (dctx->dictID != dctx->fParams.dictID))
  return ERROR(dictionary_wrong);
 if (dctx->fParams.checksumFlag)
  xxh64_reset(&dctx->xxhState, 0);
 return 0;
}
