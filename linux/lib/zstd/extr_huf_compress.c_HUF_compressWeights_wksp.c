
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int S16 ;
typedef int FSE_CTable ;
typedef int BYTE ;


 int ALIGN (int,int) ;
 int CHECK_F (int ) ;
 int CHECK_V_F (size_t,int ) ;
 size_t ERROR (int ) ;
 scalar_t__ FSE_CTABLE_SIZE_U32 (int,int) ;
 int FSE_buildCTable_wksp (int *,int *,int,int,void*,size_t) ;
 int FSE_compress_usingCTable (int *,int,void const*,size_t,int *) ;
 int FSE_count_simple (int*,int*,void const*,size_t) ;
 int FSE_normalizeCount (int *,int,int*,size_t,int) ;
 int FSE_optimalTableLog (int,size_t,int) ;
 int FSE_writeNCount (int *,int,int *,int,int) ;
 int HUF_STATIC_ASSERT (int) ;
 int HUF_TABLELOG_MAX ;
 int MAX_FSE_TABLELOG_FOR_HUFF_HEADER ;
 size_t cSize ;
 size_t hSize ;
 size_t maxCount ;
 int tableLog_tooLarge ;

size_t HUF_compressWeights_wksp(void *dst, size_t dstSize, const void *weightTable, size_t wtSize, void *workspace, size_t workspaceSize)
{
 BYTE *const ostart = (BYTE *)dst;
 BYTE *op = ostart;
 BYTE *const oend = ostart + dstSize;

 U32 maxSymbolValue = HUF_TABLELOG_MAX;
 U32 tableLog = MAX_FSE_TABLELOG_FOR_HUFF_HEADER;

 FSE_CTable *CTable;
 U32 *count;
 S16 *norm;
 size_t spaceUsed32 = 0;

 HUF_STATIC_ASSERT(sizeof(FSE_CTable) == sizeof(U32));

 CTable = (FSE_CTable *)((U32 *)workspace + spaceUsed32);
 spaceUsed32 += FSE_CTABLE_SIZE_U32(MAX_FSE_TABLELOG_FOR_HUFF_HEADER, HUF_TABLELOG_MAX);
 count = (U32 *)workspace + spaceUsed32;
 spaceUsed32 += HUF_TABLELOG_MAX + 1;
 norm = (S16 *)((U32 *)workspace + spaceUsed32);
 spaceUsed32 += ALIGN(sizeof(S16) * (HUF_TABLELOG_MAX + 1), sizeof(U32)) >> 2;

 if ((spaceUsed32 << 2) > workspaceSize)
  return ERROR(tableLog_tooLarge);
 workspace = (U32 *)workspace + spaceUsed32;
 workspaceSize -= (spaceUsed32 << 2);


 if (wtSize <= 1)
  return 0;


 {
  CHECK_V_F(maxCount, FSE_count_simple(count, &maxSymbolValue, weightTable, wtSize));
  if (maxCount == wtSize)
   return 1;
  if (maxCount == 1)
   return 0;
 }

 tableLog = FSE_optimalTableLog(tableLog, wtSize, maxSymbolValue);
 CHECK_F(FSE_normalizeCount(norm, tableLog, count, wtSize, maxSymbolValue));


 {
  CHECK_V_F(hSize, FSE_writeNCount(op, oend - op, norm, maxSymbolValue, tableLog));
  op += hSize;
 }


 CHECK_F(FSE_buildCTable_wksp(CTable, norm, maxSymbolValue, tableLog, workspace, workspaceSize));
 {
  CHECK_V_F(cSize, FSE_compress_usingCTable(op, oend - op, weightTable, wtSize, CTable));
  if (cSize == 0)
   return 0;
  op += cSize;
 }

 return op - ostart;
}
