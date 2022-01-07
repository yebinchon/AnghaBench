
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int U32 ;
typedef scalar_t__ BYTE ;


 size_t ERROR (int ) ;
 unsigned int FSE_MIN_TABLELOG ;
 int GENERIC ;
 int dstSize_tooSmall ;

__attribute__((used)) static size_t FSE_writeNCount_generic(void *header, size_t headerBufferSize, const short *normalizedCounter, unsigned maxSymbolValue, unsigned tableLog,
          unsigned writeIsSafe)
{
 BYTE *const ostart = (BYTE *)header;
 BYTE *out = ostart;
 BYTE *const oend = ostart + headerBufferSize;
 int nbBits;
 const int tableSize = 1 << tableLog;
 int remaining;
 int threshold;
 U32 bitStream;
 int bitCount;
 unsigned charnum = 0;
 int previous0 = 0;

 bitStream = 0;
 bitCount = 0;

 bitStream += (tableLog - FSE_MIN_TABLELOG) << bitCount;
 bitCount += 4;


 remaining = tableSize + 1;
 threshold = tableSize;
 nbBits = tableLog + 1;

 while (remaining > 1) {
  if (previous0) {
   unsigned start = charnum;
   while (!normalizedCounter[charnum])
    charnum++;
   while (charnum >= start + 24) {
    start += 24;
    bitStream += 0xFFFFU << bitCount;
    if ((!writeIsSafe) && (out > oend - 2))
     return ERROR(dstSize_tooSmall);
    out[0] = (BYTE)bitStream;
    out[1] = (BYTE)(bitStream >> 8);
    out += 2;
    bitStream >>= 16;
   }
   while (charnum >= start + 3) {
    start += 3;
    bitStream += 3 << bitCount;
    bitCount += 2;
   }
   bitStream += (charnum - start) << bitCount;
   bitCount += 2;
   if (bitCount > 16) {
    if ((!writeIsSafe) && (out > oend - 2))
     return ERROR(dstSize_tooSmall);
    out[0] = (BYTE)bitStream;
    out[1] = (BYTE)(bitStream >> 8);
    out += 2;
    bitStream >>= 16;
    bitCount -= 16;
   }
  }
  {
   int count = normalizedCounter[charnum++];
   int const max = (2 * threshold - 1) - remaining;
   remaining -= count < 0 ? -count : count;
   count++;
   if (count >= threshold)
    count += max;
   bitStream += count << bitCount;
   bitCount += nbBits;
   bitCount -= (count < max);
   previous0 = (count == 1);
   if (remaining < 1)
    return ERROR(GENERIC);
   while (remaining < threshold)
    nbBits--, threshold >>= 1;
  }
  if (bitCount > 16) {
   if ((!writeIsSafe) && (out > oend - 2))
    return ERROR(dstSize_tooSmall);
   out[0] = (BYTE)bitStream;
   out[1] = (BYTE)(bitStream >> 8);
   out += 2;
   bitStream >>= 16;
   bitCount -= 16;
  }
 }


 if ((!writeIsSafe) && (out > oend - 2))
  return ERROR(dstSize_tooSmall);
 out[0] = (BYTE)bitStream;
 out[1] = (BYTE)(bitStream >> 8);
 out += (bitCount + 7) / 8;

 if (charnum > maxSymbolValue + 1)
  return ERROR(GENERIC);

 return (out - ostart);
}
