
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U32 ;
typedef int BYTE ;


 int BIT_highbit32 (size_t const) ;
 size_t ERROR (int ) ;
 size_t FSE_decompress_wksp (int*,size_t,int const*,size_t,int,void*,size_t) ;
 scalar_t__ FSE_isError (size_t) ;
 int HUF_TABLELOG_MAX ;
 int corruption_detected ;
 int memset (size_t*,int ,int) ;
 int srcSize_wrong ;

size_t HUF_readStats_wksp(BYTE *huffWeight, size_t hwSize, U32 *rankStats, U32 *nbSymbolsPtr, U32 *tableLogPtr, const void *src, size_t srcSize, void *workspace, size_t workspaceSize)
{
 U32 weightTotal;
 const BYTE *ip = (const BYTE *)src;
 size_t iSize;
 size_t oSize;

 if (!srcSize)
  return ERROR(srcSize_wrong);
 iSize = ip[0];


 if (iSize >= 128) {
  oSize = iSize - 127;
  iSize = ((oSize + 1) / 2);
  if (iSize + 1 > srcSize)
   return ERROR(srcSize_wrong);
  if (oSize >= hwSize)
   return ERROR(corruption_detected);
  ip += 1;
  {
   U32 n;
   for (n = 0; n < oSize; n += 2) {
    huffWeight[n] = ip[n / 2] >> 4;
    huffWeight[n + 1] = ip[n / 2] & 15;
   }
  }
 } else {
  if (iSize + 1 > srcSize)
   return ERROR(srcSize_wrong);
  oSize = FSE_decompress_wksp(huffWeight, hwSize - 1, ip + 1, iSize, 6, workspace, workspaceSize);
  if (FSE_isError(oSize))
   return oSize;
 }


 memset(rankStats, 0, (HUF_TABLELOG_MAX + 1) * sizeof(U32));
 weightTotal = 0;
 {
  U32 n;
  for (n = 0; n < oSize; n++) {
   if (huffWeight[n] >= HUF_TABLELOG_MAX)
    return ERROR(corruption_detected);
   rankStats[huffWeight[n]]++;
   weightTotal += (1 << huffWeight[n]) >> 1;
  }
 }
 if (weightTotal == 0)
  return ERROR(corruption_detected);


 {
  U32 const tableLog = BIT_highbit32(weightTotal) + 1;
  if (tableLog > HUF_TABLELOG_MAX)
   return ERROR(corruption_detected);
  *tableLogPtr = tableLog;

  {
   U32 const total = 1 << tableLog;
   U32 const rest = total - weightTotal;
   U32 const verif = 1 << BIT_highbit32(rest);
   U32 const lastWeight = BIT_highbit32(rest) + 1;
   if (verif != rest)
    return ERROR(corruption_detected);
   huffWeight[oSize] = (BYTE)lastWeight;
   rankStats[lastWeight]++;
  }
 }


 if ((rankStats[1] < 2) || (rankStats[1] & 1))
  return ERROR(corruption_detected);


 *nbSymbolsPtr = (U32)(oSize + 1);
 return iSize + 1;
}
