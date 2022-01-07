
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ windowSize; scalar_t__ frameContentSize; } ;
typedef TYPE_1__ ZSTD_frameParams ;


 unsigned long long ZSTD_CONTENTSIZE_ERROR ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 scalar_t__ ZSTD_getFrameParams (TYPE_1__*,void const*,size_t) ;

unsigned long long ZSTD_getFrameContentSize(const void *src, size_t srcSize)
{
 {
  ZSTD_frameParams fParams;
  if (ZSTD_getFrameParams(&fParams, src, srcSize) != 0)
   return ZSTD_CONTENTSIZE_ERROR;
  if (fParams.windowSize == 0) {

   return 0;
  } else if (fParams.frameContentSize != 0) {
   return fParams.frameContentSize;
  } else {
   return ZSTD_CONTENTSIZE_UNKNOWN;
  }
 }
}
