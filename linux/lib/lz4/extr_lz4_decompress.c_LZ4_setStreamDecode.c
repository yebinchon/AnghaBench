
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t prefixSize; scalar_t__ extDictSize; int * externalDict; int const* prefixEnd; } ;
struct TYPE_5__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_1__ LZ4_streamDecode_t_internal ;
typedef TYPE_2__ LZ4_streamDecode_t ;
typedef int BYTE ;



int LZ4_setStreamDecode(LZ4_streamDecode_t *LZ4_streamDecode,
 const char *dictionary, int dictSize)
{
 LZ4_streamDecode_t_internal *lz4sd =
  &LZ4_streamDecode->internal_donotuse;

 lz4sd->prefixSize = (size_t) dictSize;
 lz4sd->prefixEnd = (const BYTE *) dictionary + dictSize;
 lz4sd->externalDict = ((void*)0);
 lz4sd->extDictSize = 0;
 return 1;
}
