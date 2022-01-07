
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
 int LZ4_decompress_safe (char const*,char*,int,int) ;
 int LZ4_decompress_safe_doubleDict (char const*,char*,int,int,int,int *,int) ;
 int LZ4_decompress_safe_forceExtDict (char const*,char*,int,int,int *,int) ;
 int LZ4_decompress_safe_withPrefix64k (char const*,char*,int,int) ;
 int LZ4_decompress_safe_withSmallPrefix (char const*,char*,int,int,int) ;
 int assert (int) ;

int LZ4_decompress_safe_continue(LZ4_streamDecode_t *LZ4_streamDecode,
 const char *source, char *dest, int compressedSize, int maxOutputSize)
{
 LZ4_streamDecode_t_internal *lz4sd =
  &LZ4_streamDecode->internal_donotuse;
 int result;

 if (lz4sd->prefixSize == 0) {

  assert(lz4sd->extDictSize == 0);
  result = LZ4_decompress_safe(source, dest,
   compressedSize, maxOutputSize);
  if (result <= 0)
   return result;
  lz4sd->prefixSize = result;
  lz4sd->prefixEnd = (BYTE *)dest + result;
 } else if (lz4sd->prefixEnd == (BYTE *)dest) {

  if (lz4sd->prefixSize >= 64 * KB - 1)
   result = LZ4_decompress_safe_withPrefix64k(source, dest,
    compressedSize, maxOutputSize);
  else if (lz4sd->extDictSize == 0)
   result = LZ4_decompress_safe_withSmallPrefix(source,
    dest, compressedSize, maxOutputSize,
    lz4sd->prefixSize);
  else
   result = LZ4_decompress_safe_doubleDict(source, dest,
    compressedSize, maxOutputSize,
    lz4sd->prefixSize,
    lz4sd->externalDict, lz4sd->extDictSize);
  if (result <= 0)
   return result;
  lz4sd->prefixSize += result;
  lz4sd->prefixEnd += result;
 } else {




  lz4sd->extDictSize = lz4sd->prefixSize;
  lz4sd->externalDict = lz4sd->prefixEnd - lz4sd->extDictSize;
  result = LZ4_decompress_safe_forceExtDict(source, dest,
   compressedSize, maxOutputSize,
   lz4sd->externalDict, lz4sd->extDictSize);
  if (result <= 0)
   return result;
  lz4sd->prefixSize = result;
  lz4sd->prefixEnd = (BYTE *)dest + result;
 }

 return result;
}
