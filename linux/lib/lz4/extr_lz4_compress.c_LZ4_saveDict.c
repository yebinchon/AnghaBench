
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {int dictSize; int const* dictionary; } ;
struct TYPE_5__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t_internal ;
typedef TYPE_2__ LZ4_stream_t ;
typedef int const BYTE ;


 int KB ;
 int memmove (char*,int const* const,int) ;

int LZ4_saveDict(LZ4_stream_t *LZ4_dict, char *safeBuffer, int dictSize)
{
 LZ4_stream_t_internal * const dict = &LZ4_dict->internal_donotuse;
 const BYTE * const previousDictEnd = dict->dictionary + dict->dictSize;

 if ((U32)dictSize > 64 * KB) {

  dictSize = 64 * KB;
 }
 if ((U32)dictSize > dict->dictSize)
  dictSize = dict->dictSize;

 memmove(safeBuffer, previousDictEnd - dictSize, dictSize);

 dict->dictionary = (const BYTE *)safeBuffer;
 dict->dictSize = (U32)dictSize;

 return dictSize;
}
