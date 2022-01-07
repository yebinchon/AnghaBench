
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int lastBlock; int origSize; int blockType; } ;
typedef TYPE_2__ blockProperties_t ;
struct TYPE_9__ {int checksumFlag; } ;
struct TYPE_11__ {size_t expected; int stage; size_t headerBuffer; size_t headerSize; char* previousDstEnd; int xxhState; TYPE_1__ fParams; int rleSize; int bType; } ;
typedef TYPE_3__ ZSTD_DCtx ;
typedef int U32 ;


 int CHECK_F (int ) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 int ZSTD_MAGIC_SKIPPABLE_START ;
 void* ZSTD_blockHeaderSize ;
 int ZSTD_checkContinuity (TYPE_3__*,void*) ;
 size_t ZSTD_copyRawBlock (void*,size_t,void const*,size_t) ;
 int ZSTD_decodeFrameHeader (TYPE_3__*,size_t,size_t) ;
 size_t ZSTD_decompressBlock_internal (TYPE_3__*,void*,size_t,void const*,size_t) ;
 size_t ZSTD_frameHeaderSize (void const*,size_t) ;
 size_t ZSTD_frameHeaderSize_prefix ;
 size_t ZSTD_getcBlockSize (void const*,void*,TYPE_2__*) ;
 int ZSTD_isError (size_t const) ;
 int ZSTD_readLE32 (void const*) ;
 size_t ZSTD_setRleBlock (void*,size_t,void const*,size_t,int ) ;
 size_t ZSTD_skippableHeaderSize ;
 int checksum_wrong ;
 int corruption_detected ;
 int memcpy (size_t,void const*,size_t) ;
 int srcSize_wrong ;
 int xxh64_digest (int *) ;
 int xxh64_update (int *,void*,size_t) ;

size_t ZSTD_decompressContinue(ZSTD_DCtx *dctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{

 if (srcSize != dctx->expected)
  return ERROR(srcSize_wrong);
 if (dstCapacity)
  ZSTD_checkContinuity(dctx, dst);

 switch (dctx->stage) {
 case 133:
  if (srcSize != ZSTD_frameHeaderSize_prefix)
   return ERROR(srcSize_wrong);
  if ((ZSTD_readLE32(src) & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {
   memcpy(dctx->headerBuffer, src, ZSTD_frameHeaderSize_prefix);
   dctx->expected = ZSTD_skippableHeaderSize - ZSTD_frameHeaderSize_prefix;
   dctx->stage = 136;
   return 0;
  }
  dctx->headerSize = ZSTD_frameHeaderSize(src, ZSTD_frameHeaderSize_prefix);
  if (ZSTD_isError(dctx->headerSize))
   return dctx->headerSize;
  memcpy(dctx->headerBuffer, src, ZSTD_frameHeaderSize_prefix);
  if (dctx->headerSize > ZSTD_frameHeaderSize_prefix) {
   dctx->expected = dctx->headerSize - ZSTD_frameHeaderSize_prefix;
   dctx->stage = 137;
   return 0;
  }
  dctx->expected = 0;


 case 137:
  memcpy(dctx->headerBuffer + ZSTD_frameHeaderSize_prefix, src, dctx->expected);
  CHECK_F(ZSTD_decodeFrameHeader(dctx, dctx->headerBuffer, dctx->headerSize));
  dctx->expected = ZSTD_blockHeaderSize;
  dctx->stage = 138;
  return 0;

 case 138: {
  blockProperties_t bp;
  size_t const cBlockSize = ZSTD_getcBlockSize(src, ZSTD_blockHeaderSize, &bp);
  if (ZSTD_isError(cBlockSize))
   return cBlockSize;
  dctx->expected = cBlockSize;
  dctx->bType = bp.blockType;
  dctx->rleSize = bp.origSize;
  if (cBlockSize) {
   dctx->stage = bp.lastBlock ? 134 : 135;
   return 0;
  }

  if (bp.lastBlock) {
   if (dctx->fParams.checksumFlag) {
    dctx->expected = 4;
    dctx->stage = 139;
   } else {
    dctx->expected = 0;
    dctx->stage = 133;
   }
  } else {
   dctx->expected = 3;
   dctx->stage = 138;
  }
  return 0;
 }
 case 134:
 case 135: {
  size_t rSize;
  switch (dctx->bType) {
  case 131: rSize = ZSTD_decompressBlock_internal(dctx, dst, dstCapacity, src, srcSize); break;
  case 130: rSize = ZSTD_copyRawBlock(dst, dstCapacity, src, srcSize); break;
  case 128: rSize = ZSTD_setRleBlock(dst, dstCapacity, src, srcSize, dctx->rleSize); break;
  case 129:
  default: return ERROR(corruption_detected);
  }
  if (ZSTD_isError(rSize))
   return rSize;
  if (dctx->fParams.checksumFlag)
   xxh64_update(&dctx->xxhState, dst, rSize);

  if (dctx->stage == 134) {
   if (dctx->fParams.checksumFlag) {
    dctx->expected = 4;
    dctx->stage = 139;
   } else {
    dctx->expected = 0;
    dctx->stage = 133;
   }
  } else {
   dctx->stage = 138;
   dctx->expected = ZSTD_blockHeaderSize;
   dctx->previousDstEnd = (char *)dst + rSize;
  }
  return rSize;
 }
 case 139: {
  U32 const h32 = (U32)xxh64_digest(&dctx->xxhState);
  U32 const check32 = ZSTD_readLE32(src);
  if (check32 != h32)
   return ERROR(checksum_wrong);
  dctx->expected = 0;
  dctx->stage = 133;
  return 0;
 }
 case 136: {
  memcpy(dctx->headerBuffer + ZSTD_frameHeaderSize_prefix, src, dctx->expected);
  dctx->expected = ZSTD_readLE32(dctx->headerBuffer + 4);
  dctx->stage = 132;
  return 0;
 }
 case 132: {
  dctx->expected = 0;
  dctx->stage = 133;
  return 0;
 }
 default:
  return ERROR(GENERIC);
 }
}
