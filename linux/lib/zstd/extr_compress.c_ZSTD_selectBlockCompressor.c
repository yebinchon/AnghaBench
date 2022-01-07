
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ZSTD_strategy ;
struct TYPE_3__ {int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ const ZSTD_blockCompressor ;
typedef size_t U32 ;
__attribute__((used)) static ZSTD_blockCompressor ZSTD_selectBlockCompressor(ZSTD_strategy strat, int extDict)
{
 static const ZSTD_blockCompressor blockCompressor[2][8] = {
     {135, 137, 133, 131, 130,
      143, 141, 140},
     {134, 136, 132, 128,
      129, 142, 138, 139}};

 return blockCompressor[extDict][(U32)strat];
}
