
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_nextInputType_e ;
struct TYPE_3__ {int stage; } ;
typedef TYPE_1__ ZSTD_DCtx ;
 int ZSTDnit_block ;
 int ZSTDnit_blockHeader ;
 int ZSTDnit_checksum ;
 int ZSTDnit_frameHeader ;
 int ZSTDnit_lastBlock ;
 int ZSTDnit_skippableFrame ;

ZSTD_nextInputType_e ZSTD_nextInputType(ZSTD_DCtx *dctx)
{
 switch (dctx->stage) {
 default:
 case 129:
 case 133: return ZSTDnit_frameHeader;
 case 134: return ZSTDnit_blockHeader;
 case 131: return ZSTDnit_block;
 case 130: return ZSTDnit_lastBlock;
 case 135: return ZSTDnit_checksum;
 case 132:
 case 128: return ZSTDnit_skippableFrame;
 }
}
