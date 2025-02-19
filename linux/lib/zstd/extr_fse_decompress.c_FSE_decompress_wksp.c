
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int FSE_DTable ;
typedef int BYTE ;


 int ALIGN (int,int) ;
 int CHECK_F (int ) ;
 size_t ERROR (int ) ;
 scalar_t__ FSE_DTABLE_SIZE_U32 (unsigned int) ;
 int FSE_MAX_SYMBOL_VALUE ;
 int FSE_STATIC_ASSERT (int) ;
 int FSE_buildDTable_wksp (int *,short*,unsigned int,unsigned int,void*,size_t) ;
 size_t FSE_decompress_usingDTable (void*,size_t,int const*,size_t,int *) ;
 scalar_t__ FSE_isError (size_t) ;
 size_t FSE_readNCount (short*,unsigned int*,unsigned int*,int const* const,size_t) ;
 int tableLog_tooLarge ;

size_t FSE_decompress_wksp(void *dst, size_t dstCapacity, const void *cSrc, size_t cSrcSize, unsigned maxLog, void *workspace, size_t workspaceSize)
{
 const BYTE *const istart = (const BYTE *)cSrc;
 const BYTE *ip = istart;
 unsigned tableLog;
 unsigned maxSymbolValue = FSE_MAX_SYMBOL_VALUE;
 size_t NCountLength;

 FSE_DTable *dt;
 short *counting;
 size_t spaceUsed32 = 0;

 FSE_STATIC_ASSERT(sizeof(FSE_DTable) == sizeof(U32));

 dt = (FSE_DTable *)((U32 *)workspace + spaceUsed32);
 spaceUsed32 += FSE_DTABLE_SIZE_U32(maxLog);
 counting = (short *)((U32 *)workspace + spaceUsed32);
 spaceUsed32 += ALIGN(sizeof(short) * (FSE_MAX_SYMBOL_VALUE + 1), sizeof(U32)) >> 2;

 if ((spaceUsed32 << 2) > workspaceSize)
  return ERROR(tableLog_tooLarge);
 workspace = (U32 *)workspace + spaceUsed32;
 workspaceSize -= (spaceUsed32 << 2);


 NCountLength = FSE_readNCount(counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
 if (FSE_isError(NCountLength))
  return NCountLength;


 if (tableLog > maxLog)
  return ERROR(tableLog_tooLarge);
 ip += NCountLength;
 cSrcSize -= NCountLength;

 CHECK_F(FSE_buildDTable_wksp(dt, counting, maxSymbolValue, tableLog, workspace, workspaceSize));

 return FSE_decompress_usingDTable(dst, dstCapacity, ip, cSrcSize, dt);
}
