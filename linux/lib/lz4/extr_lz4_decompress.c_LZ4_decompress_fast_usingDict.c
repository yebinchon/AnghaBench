
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_decompress_fast (char const*,char*,int) ;
 int LZ4_decompress_fast_extDict (char const*,char*,int,char const*,int) ;

int LZ4_decompress_fast_usingDict(const char *source, char *dest,
      int originalSize,
      const char *dictStart, int dictSize)
{
 if (dictSize == 0 || dictStart + dictSize == dest)
  return LZ4_decompress_fast(source, dest, originalSize);

 return LZ4_decompress_fast_extDict(source, dest, originalSize,
  dictStart, dictSize);
}
