
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* rep; int workspace; int LLTable; int MLTable; int OFTable; int hufTable; } ;
typedef TYPE_1__ ZSTD_entropyTables_t ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 int CHECK_E (int ,int ) ;
 size_t ERROR (int ) ;
 int FSE_buildDTable_wksp (int ,short*,unsigned int,unsigned int,int ,int) ;
 scalar_t__ FSE_isError (size_t const) ;
 size_t FSE_readNCount (short*,...) ;
 scalar_t__ HUF_isError (size_t const) ;
 size_t HUF_readDTableX4_wksp (int ,int const*,int,int ,int) ;
 unsigned int LLFSELog ;
 unsigned int MLFSELog ;
 int MaxLL ;
 int MaxML ;
 scalar_t__ MaxOff ;
 scalar_t__ OffFSELog ;
 scalar_t__ ZSTD_readLE32 (int const*) ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t ZSTD_loadEntropy(ZSTD_entropyTables_t *entropy, const void *const dict, size_t const dictSize)
{
 const BYTE *dictPtr = (const BYTE *)dict;
 const BYTE *const dictEnd = dictPtr + dictSize;

 if (dictSize <= 8)
  return ERROR(dictionary_corrupted);
 dictPtr += 8;

 {
  size_t const hSize = HUF_readDTableX4_wksp(entropy->hufTable, dictPtr, dictEnd - dictPtr, entropy->workspace, sizeof(entropy->workspace));
  if (HUF_isError(hSize))
   return ERROR(dictionary_corrupted);
  dictPtr += hSize;
 }

 {
  short offcodeNCount[MaxOff + 1];
  U32 offcodeMaxValue = MaxOff, offcodeLog;
  size_t const offcodeHeaderSize = FSE_readNCount(offcodeNCount, &offcodeMaxValue, &offcodeLog, dictPtr, dictEnd - dictPtr);
  if (FSE_isError(offcodeHeaderSize))
   return ERROR(dictionary_corrupted);
  if (offcodeLog > OffFSELog)
   return ERROR(dictionary_corrupted);
  CHECK_E(FSE_buildDTable_wksp(entropy->OFTable, offcodeNCount, offcodeMaxValue, offcodeLog, entropy->workspace, sizeof(entropy->workspace)), dictionary_corrupted);
  dictPtr += offcodeHeaderSize;
 }

 {
  short matchlengthNCount[MaxML + 1];
  unsigned matchlengthMaxValue = MaxML, matchlengthLog;
  size_t const matchlengthHeaderSize = FSE_readNCount(matchlengthNCount, &matchlengthMaxValue, &matchlengthLog, dictPtr, dictEnd - dictPtr);
  if (FSE_isError(matchlengthHeaderSize))
   return ERROR(dictionary_corrupted);
  if (matchlengthLog > MLFSELog)
   return ERROR(dictionary_corrupted);
  CHECK_E(FSE_buildDTable_wksp(entropy->MLTable, matchlengthNCount, matchlengthMaxValue, matchlengthLog, entropy->workspace, sizeof(entropy->workspace)), dictionary_corrupted);
  dictPtr += matchlengthHeaderSize;
 }

 {
  short litlengthNCount[MaxLL + 1];
  unsigned litlengthMaxValue = MaxLL, litlengthLog;
  size_t const litlengthHeaderSize = FSE_readNCount(litlengthNCount, &litlengthMaxValue, &litlengthLog, dictPtr, dictEnd - dictPtr);
  if (FSE_isError(litlengthHeaderSize))
   return ERROR(dictionary_corrupted);
  if (litlengthLog > LLFSELog)
   return ERROR(dictionary_corrupted);
  CHECK_E(FSE_buildDTable_wksp(entropy->LLTable, litlengthNCount, litlengthMaxValue, litlengthLog, entropy->workspace, sizeof(entropy->workspace)), dictionary_corrupted);
  dictPtr += litlengthHeaderSize;
 }

 if (dictPtr + 12 > dictEnd)
  return ERROR(dictionary_corrupted);
 {
  int i;
  size_t const dictContentSize = (size_t)(dictEnd - (dictPtr + 12));
  for (i = 0; i < 3; i++) {
   U32 const rep = ZSTD_readLE32(dictPtr);
   dictPtr += 4;
   if (rep == 0 || rep >= dictContentSize)
    return ERROR(dictionary_corrupted);
   entropy->rep[i] = rep;
  }
 }

 return dictPtr - (const BYTE *)dict;
}
