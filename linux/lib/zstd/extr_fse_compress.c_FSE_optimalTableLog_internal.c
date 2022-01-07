
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;


 unsigned int BIT_highbit32 (scalar_t__) ;
 scalar_t__ FSE_DEFAULT_TABLELOG ;
 scalar_t__ FSE_MAX_TABLELOG ;
 scalar_t__ FSE_MIN_TABLELOG ;
 scalar_t__ FSE_minTableLog (size_t,unsigned int) ;

unsigned FSE_optimalTableLog_internal(unsigned maxTableLog, size_t srcSize, unsigned maxSymbolValue, unsigned minus)
{
 U32 maxBitsSrc = BIT_highbit32((U32)(srcSize - 1)) - minus;
 U32 tableLog = maxTableLog;
 U32 minBits = FSE_minTableLog(srcSize, maxSymbolValue);
 if (tableLog == 0)
  tableLog = FSE_DEFAULT_TABLELOG;
 if (maxBitsSrc < tableLog)
  tableLog = maxBitsSrc;
 if (minBits > tableLog)
  tableLog = minBits;
 if (tableLog < FSE_MIN_TABLELOG)
  tableLog = FSE_MIN_TABLELOG;
 if (tableLog > FSE_MAX_TABLELOG)
  tableLog = FSE_MAX_TABLELOG;
 return tableLog;
}
