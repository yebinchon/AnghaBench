
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_match_t ;
struct TYPE_5__ {int nextToUpdate; int const* const base; } ;
typedef TYPE_1__ ZSTD_CCtx ;
typedef int U32 ;
typedef int BYTE ;


 int ZSTD_insertBtAndGetAllMatches (TYPE_1__*,int const* const,int const* const,int const,int const,int ,int *,int const) ;
 int ZSTD_updateTree (TYPE_1__*,int const* const,int const* const,int const,int const) ;

__attribute__((used)) static U32 ZSTD_BtGetAllMatches(ZSTD_CCtx *zc, const BYTE *const ip, const BYTE *const iLimit, const U32 maxNbAttempts, const U32 mls, ZSTD_match_t *matches,
    const U32 minMatchLen)
{
 if (ip < zc->base + zc->nextToUpdate)
  return 0;
 ZSTD_updateTree(zc, ip, iLimit, maxNbAttempts, mls);
 return ZSTD_insertBtAndGetAllMatches(zc, ip, iLimit, maxNbAttempts, mls, 0, matches, minMatchLen);
}
