
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {unsigned int off; unsigned int len; } ;
typedef TYPE_3__ ZSTD_match_t ;
struct TYPE_8__ {unsigned int hashLog; unsigned int chainLog; } ;
struct TYPE_9__ {TYPE_1__ cParams; } ;
struct TYPE_11__ {scalar_t__* base; unsigned int* hashTable; unsigned int* chainTable; scalar_t__* dictBase; unsigned int dictLimit; unsigned int lowLimit; unsigned int nextToUpdate; TYPE_2__ params; } ;
typedef TYPE_4__ ZSTD_CCtx ;
typedef unsigned int U32 ;
typedef scalar_t__ BYTE ;


 size_t MIN (size_t,size_t) ;
 size_t MINMATCH ;
 size_t ZSTD_OPT_NUM ;
 unsigned int const ZSTD_REP_MOVE_OPT ;
 size_t ZSTD_count (scalar_t__ const* const,scalar_t__ const*,scalar_t__ const* const) ;
 size_t ZSTD_count_2segments (scalar_t__ const* const,scalar_t__ const*,scalar_t__ const* const,scalar_t__ const* const,scalar_t__ const* const) ;
 size_t ZSTD_hashPtr (scalar_t__ const* const,unsigned int const,unsigned int const) ;
 unsigned int ZSTD_insertAndFindFirstIndexHash3 (TYPE_4__*,scalar_t__ const* const) ;
 scalar_t__ ZSTD_readMINMATCH (scalar_t__ const* const,size_t) ;

__attribute__((used)) static U32 ZSTD_insertBtAndGetAllMatches(ZSTD_CCtx *zc, const BYTE *const ip, const BYTE *const iLimit, U32 nbCompares, const U32 mls, U32 extDict,
      ZSTD_match_t *matches, const U32 minMatchLen)
{
 const BYTE *const base = zc->base;
 const U32 curr = (U32)(ip - base);
 const U32 hashLog = zc->params.cParams.hashLog;
 const size_t h = ZSTD_hashPtr(ip, hashLog, mls);
 U32 *const hashTable = zc->hashTable;
 U32 matchIndex = hashTable[h];
 U32 *const bt = zc->chainTable;
 const U32 btLog = zc->params.cParams.chainLog - 1;
 const U32 btMask = (1U << btLog) - 1;
 size_t commonLengthSmaller = 0, commonLengthLarger = 0;
 const BYTE *const dictBase = zc->dictBase;
 const U32 dictLimit = zc->dictLimit;
 const BYTE *const dictEnd = dictBase + dictLimit;
 const BYTE *const prefixStart = base + dictLimit;
 const U32 btLow = btMask >= curr ? 0 : curr - btMask;
 const U32 windowLow = zc->lowLimit;
 U32 *smallerPtr = bt + 2 * (curr & btMask);
 U32 *largerPtr = bt + 2 * (curr & btMask) + 1;
 U32 matchEndIdx = curr + 8;
 U32 dummy32;
 U32 mnum = 0;

 const U32 minMatch = (mls == 3) ? 3 : 4;
 size_t bestLength = minMatchLen - 1;

 if (minMatch == 3) {
  U32 const matchIndex3 = ZSTD_insertAndFindFirstIndexHash3(zc, ip);
  if (matchIndex3 > windowLow && (curr - matchIndex3 < (1 << 18))) {
   const BYTE *match;
   size_t currMl = 0;
   if ((!extDict) || matchIndex3 >= dictLimit) {
    match = base + matchIndex3;
    if (match[bestLength] == ip[bestLength])
     currMl = ZSTD_count(ip, match, iLimit);
   } else {
    match = dictBase + matchIndex3;
    if (ZSTD_readMINMATCH(match, MINMATCH) ==
        ZSTD_readMINMATCH(ip, MINMATCH))
     currMl = ZSTD_count_2segments(ip + MINMATCH, match + MINMATCH, iLimit, dictEnd, prefixStart) + MINMATCH;
   }


   if (currMl > bestLength) {
    bestLength = currMl;
    matches[mnum].off = ZSTD_REP_MOVE_OPT + curr - matchIndex3;
    matches[mnum].len = (U32)currMl;
    mnum++;
    if (currMl > ZSTD_OPT_NUM)
     goto update;
    if (ip + currMl == iLimit)
     goto update;
   }
  }
 }

 hashTable[h] = curr;

 while (nbCompares-- && (matchIndex > windowLow)) {
  U32 *nextPtr = bt + 2 * (matchIndex & btMask);
  size_t matchLength = MIN(commonLengthSmaller, commonLengthLarger);
  const BYTE *match;

  if ((!extDict) || (matchIndex + matchLength >= dictLimit)) {
   match = base + matchIndex;
   if (match[matchLength] == ip[matchLength]) {
    matchLength += ZSTD_count(ip + matchLength + 1, match + matchLength + 1, iLimit) + 1;
   }
  } else {
   match = dictBase + matchIndex;
   matchLength += ZSTD_count_2segments(ip + matchLength, match + matchLength, iLimit, dictEnd, prefixStart);
   if (matchIndex + matchLength >= dictLimit)
    match = base + matchIndex;
  }

  if (matchLength > bestLength) {
   if (matchLength > matchEndIdx - matchIndex)
    matchEndIdx = matchIndex + (U32)matchLength;
   bestLength = matchLength;
   matches[mnum].off = ZSTD_REP_MOVE_OPT + curr - matchIndex;
   matches[mnum].len = (U32)matchLength;
   mnum++;
   if (matchLength > ZSTD_OPT_NUM)
    break;
   if (ip + matchLength == iLimit)
    break;
  }

  if (match[matchLength] < ip[matchLength]) {

   *smallerPtr = matchIndex;
   commonLengthSmaller = matchLength;
   if (matchIndex <= btLow) {
    smallerPtr = &dummy32;
    break;
   }
   smallerPtr = nextPtr + 1;
   matchIndex = nextPtr[1];
  } else {

   *largerPtr = matchIndex;
   commonLengthLarger = matchLength;
   if (matchIndex <= btLow) {
    largerPtr = &dummy32;
    break;
   }
   largerPtr = nextPtr;
   matchIndex = nextPtr[0];
  }
 }

 *smallerPtr = *largerPtr = 0;

update:
 zc->nextToUpdate = (matchEndIdx > curr + 8) ? matchEndIdx - 8 : curr + 1;
 return mnum;
}
