
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 size_t ERROR (int ) ;
 int FSE_CTABLE_SIZE_U32 (unsigned int,unsigned int) ;
 unsigned int FSE_MAX_TABLELOG ;
 int tableLog_tooLarge ;

size_t FSE_sizeof_CTable(unsigned maxSymbolValue, unsigned tableLog)
{
 if (tableLog > FSE_MAX_TABLELOG)
  return ERROR(tableLog_tooLarge);
 return FSE_CTABLE_SIZE_U32(tableLog, maxSymbolValue) * sizeof(U32);
}
