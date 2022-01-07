
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int LZ4_decompress_generic (char const*,char*,int ,int,int ,int ,int ,int *,int const*,size_t) ;
 int decode_full_block ;
 int endOnOutputSize ;
 int usingExtDict ;

__attribute__((used)) static int LZ4_decompress_fast_extDict(const char *source, char *dest,
           int originalSize,
           const void *dictStart, size_t dictSize)
{
 return LZ4_decompress_generic(source, dest,
          0, originalSize,
          endOnOutputSize, decode_full_block,
          usingExtDict, (BYTE *)dest,
          (const BYTE *)dictStart, dictSize);
}
