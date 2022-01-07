
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prefixSize; int extDictSize; int * prefixEnd; int * externalDict; } ;
struct TYPE_5__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_1__ LZ4_streamDecode_t_internal ;
typedef TYPE_2__ LZ4_streamDecode_t ;
typedef int BYTE ;


 int KB ;
 int LZ4_decompress_fast (char const*,char*,int) ;
 int LZ4_decompress_fast_doubleDict (char const*,char*,int,int,int *,int) ;
 int LZ4_decompress_fast_extDict (char const*,char*,int,int *,int) ;
 int assert (int) ;

int LZ4_decompress_fast_continue(LZ4_streamDecode_t *LZ4_streamDecode,
 const char *source, char *dest, int originalSize)
{
 LZ4_streamDecode_t_internal *lz4sd = &LZ4_streamDecode->internal_donotuse;
 int result;

 if (lz4sd->prefixSize == 0) {
  assert(lz4sd->extDictSize == 0);
  result = LZ4_decompress_fast(source, dest, originalSize);
  if (result <= 0)
   return result;
  lz4sd->prefixSize = originalSize;
  lz4sd->prefixEnd = (BYTE *)dest + originalSize;
 } else if (lz4sd->prefixEnd == (BYTE *)dest) {
  if (lz4sd->prefixSize >= 64 * KB - 1 ||
      lz4sd->extDictSize == 0)
   result = LZ4_decompress_fast(source, dest,
           originalSize);
  else
   result = LZ4_decompress_fast_doubleDict(source, dest,
    originalSize, lz4sd->prefixSize,
    lz4sd->externalDict, lz4sd->extDictSize);
  if (result <= 0)
   return result;
  lz4sd->prefixSize += originalSize;
  lz4sd->prefixEnd += originalSize;
 } else {
  lz4sd->extDictSize = lz4sd->prefixSize;
  lz4sd->externalDict = lz4sd->prefixEnd - lz4sd->extDictSize;
  result = LZ4_decompress_fast_extDict(source, dest,
   originalSize, lz4sd->externalDict, lz4sd->extDictSize);
  if (result <= 0)
   return result;
  lz4sd->prefixSize = originalSize;
  lz4sd->prefixEnd = (BYTE *)dest + originalSize;
 }
 return result;
}
