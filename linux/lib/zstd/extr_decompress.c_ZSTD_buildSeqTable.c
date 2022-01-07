
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolEncodingType_e ;
typedef int const U32 ;
typedef int S16 ;
typedef int FSE_decode_t4 ;
typedef int FSE_DTable ;
typedef int BYTE ;


 int ALIGN (int,int) ;
 size_t ERROR (int ) ;
 int FSE_buildDTable_rle (int *,int const) ;
 int FSE_buildDTable_wksp (int *,int *,int const,int const,void*,size_t) ;
 int FSE_isError (size_t const) ;
 size_t FSE_readNCount (int *,int const*,int const*,void const*,size_t) ;
 int GENERIC ;
 int MaxSeq ;
 int corruption_detected ;




 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_buildSeqTable(FSE_DTable *DTableSpace, const FSE_DTable **DTablePtr, symbolEncodingType_e type, U32 max, U32 maxLog, const void *src,
     size_t srcSize, const FSE_decode_t4 *defaultTable, U32 flagRepeatTable, void *workspace, size_t workspaceSize)
{
 const void *const tmpPtr = defaultTable;
 switch (type) {
 case 128:
  if (!srcSize)
   return ERROR(srcSize_wrong);
  if ((*(const BYTE *)src) > max)
   return ERROR(corruption_detected);
  FSE_buildDTable_rle(DTableSpace, *(const BYTE *)src);
  *DTablePtr = DTableSpace;
  return 1;
 case 131: *DTablePtr = (const FSE_DTable *)tmpPtr; return 0;
 case 129:
  if (!flagRepeatTable)
   return ERROR(corruption_detected);
  return 0;
 default:
 case 130: {
  U32 tableLog;
  S16 *norm = (S16 *)workspace;
  size_t const spaceUsed32 = ALIGN(sizeof(S16) * (MaxSeq + 1), sizeof(U32)) >> 2;

  if ((spaceUsed32 << 2) > workspaceSize)
   return ERROR(GENERIC);
  workspace = (U32 *)workspace + spaceUsed32;
  workspaceSize -= (spaceUsed32 << 2);
  {
   size_t const headerSize = FSE_readNCount(norm, &max, &tableLog, src, srcSize);
   if (FSE_isError(headerSize))
    return ERROR(corruption_detected);
   if (tableLog > maxLog)
    return ERROR(corruption_detected);
   FSE_buildDTable_wksp(DTableSpace, norm, max, tableLog, workspace, workspaceSize);
   *DTablePtr = DTableSpace;
   return headerSize;
  }
 }
 }
}
