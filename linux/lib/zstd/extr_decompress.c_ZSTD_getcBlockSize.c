
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ blockType_e ;
struct TYPE_3__ {int lastBlock; scalar_t__ blockType; int origSize; } ;
typedef TYPE_1__ blockProperties_t ;
typedef int U32 ;


 size_t ERROR (int ) ;
 size_t ZSTD_blockHeaderSize ;
 int ZSTD_readLE24 (void const*) ;
 scalar_t__ bt_reserved ;
 scalar_t__ bt_rle ;
 int corruption_detected ;
 int srcSize_wrong ;

size_t ZSTD_getcBlockSize(const void *src, size_t srcSize, blockProperties_t *bpPtr)
{
 if (srcSize < ZSTD_blockHeaderSize)
  return ERROR(srcSize_wrong);
 {
  U32 const cBlockHeader = ZSTD_readLE24(src);
  U32 const cSize = cBlockHeader >> 3;
  bpPtr->lastBlock = cBlockHeader & 1;
  bpPtr->blockType = (blockType_e)((cBlockHeader >> 1) & 3);
  bpPtr->origSize = cSize;
  if (bpPtr->blockType == bt_rle)
   return 1;
  if (bpPtr->blockType == bt_reserved)
   return ERROR(corruption_detected);
  return cSize;
 }
}
