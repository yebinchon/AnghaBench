
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_match_t ;
typedef int ZSTD_CCtx ;
typedef int U32 ;
typedef int BYTE ;


 int ZSTD_BtGetAllMatches (int *,int const*,int const* const,int const,int,int *,int const) ;

__attribute__((used)) static U32 ZSTD_BtGetAllMatches_selectMLS(ZSTD_CCtx *zc,
       const BYTE *ip, const BYTE *const iHighLimit, const U32 maxNbAttempts, const U32 matchLengthSearch,
       ZSTD_match_t *matches, const U32 minMatchLen)
{
 switch (matchLengthSearch) {
 case 3: return ZSTD_BtGetAllMatches(zc, ip, iHighLimit, maxNbAttempts, 3, matches, minMatchLen);
 default:
 case 4: return ZSTD_BtGetAllMatches(zc, ip, iHighLimit, maxNbAttempts, 4, matches, minMatchLen);
 case 5: return ZSTD_BtGetAllMatches(zc, ip, iHighLimit, maxNbAttempts, 5, matches, minMatchLen);
 case 7:
 case 6: return ZSTD_BtGetAllMatches(zc, ip, iHighLimit, maxNbAttempts, 6, matches, minMatchLen);
 }
}
