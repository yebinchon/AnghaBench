
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ strategy; int targetLength; int searchLength; int searchLog; int hashLog; int chainLog; int windowLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef scalar_t__ U32 ;


 int CLAMPCHECK (int ,int ,int ) ;
 size_t ERROR (int ) ;
 int ZSTD_CHAINLOG_MAX ;
 int ZSTD_CHAINLOG_MIN ;
 int ZSTD_HASHLOG_MAX ;
 int ZSTD_HASHLOG_MIN ;
 int ZSTD_SEARCHLENGTH_MAX ;
 int ZSTD_SEARCHLENGTH_MIN ;
 int ZSTD_SEARCHLOG_MAX ;
 int ZSTD_SEARCHLOG_MIN ;
 int ZSTD_TARGETLENGTH_MAX ;
 int ZSTD_TARGETLENGTH_MIN ;
 int ZSTD_WINDOWLOG_MAX ;
 int ZSTD_WINDOWLOG_MIN ;
 scalar_t__ ZSTD_btopt2 ;
 int compressionParameter_unsupported ;

size_t ZSTD_checkCParams(ZSTD_compressionParameters cParams)
{





 { if ((cParams.windowLog < ZSTD_WINDOWLOG_MIN) | (cParams.windowLog > ZSTD_WINDOWLOG_MAX)) return ERROR(compressionParameter_unsupported); };
 { if ((cParams.chainLog < ZSTD_CHAINLOG_MIN) | (cParams.chainLog > ZSTD_CHAINLOG_MAX)) return ERROR(compressionParameter_unsupported); };
 { if ((cParams.hashLog < ZSTD_HASHLOG_MIN) | (cParams.hashLog > ZSTD_HASHLOG_MAX)) return ERROR(compressionParameter_unsupported); };
 { if ((cParams.searchLog < ZSTD_SEARCHLOG_MIN) | (cParams.searchLog > ZSTD_SEARCHLOG_MAX)) return ERROR(compressionParameter_unsupported); };
 { if ((cParams.searchLength < ZSTD_SEARCHLENGTH_MIN) | (cParams.searchLength > ZSTD_SEARCHLENGTH_MAX)) return ERROR(compressionParameter_unsupported); };
 { if ((cParams.targetLength < ZSTD_TARGETLENGTH_MIN) | (cParams.targetLength > ZSTD_TARGETLENGTH_MAX)) return ERROR(compressionParameter_unsupported); };
 if ((U32)(cParams.strategy) > (U32)ZSTD_btopt2)
  return ERROR(compressionParameter_unsupported);
 return 0;
}
