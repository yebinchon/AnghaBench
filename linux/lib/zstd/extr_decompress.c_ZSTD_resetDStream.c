
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hostageByte; scalar_t__ legacyVersion; scalar_t__ outEnd; scalar_t__ outStart; scalar_t__ inPos; scalar_t__ lhSize; int stage; } ;
typedef TYPE_1__ ZSTD_DStream ;


 size_t ZSTD_frameHeaderSize_prefix ;
 int zdss_loadHeader ;

size_t ZSTD_resetDStream(ZSTD_DStream *zds)
{
 zds->stage = zdss_loadHeader;
 zds->lhSize = zds->inPos = zds->outStart = zds->outEnd = 0;
 zds->legacyVersion = 0;
 zds->hostageByte = 0;
 return ZSTD_frameHeaderSize_prefix;
}
