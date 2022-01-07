
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KB ;
 int LZ4_decompress_safe (char const*,char*,int,int) ;
 int LZ4_decompress_safe_forceExtDict (char const*,char*,int,int,char const*,int) ;
 int LZ4_decompress_safe_withPrefix64k (char const*,char*,int,int) ;
 int LZ4_decompress_safe_withSmallPrefix (char const*,char*,int,int,int) ;

int LZ4_decompress_safe_usingDict(const char *source, char *dest,
      int compressedSize, int maxOutputSize,
      const char *dictStart, int dictSize)
{
 if (dictSize == 0)
  return LZ4_decompress_safe(source, dest,
        compressedSize, maxOutputSize);
 if (dictStart+dictSize == dest) {
  if (dictSize >= 64 * KB - 1)
   return LZ4_decompress_safe_withPrefix64k(source, dest,
    compressedSize, maxOutputSize);
  return LZ4_decompress_safe_withSmallPrefix(source, dest,
   compressedSize, maxOutputSize, dictSize);
 }
 return LZ4_decompress_safe_forceExtDict(source, dest,
  compressedSize, maxOutputSize, dictStart, dictSize);
}
