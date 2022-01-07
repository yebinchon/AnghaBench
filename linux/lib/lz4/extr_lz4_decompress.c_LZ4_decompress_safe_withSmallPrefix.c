
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int LZ4_decompress_generic (char const*,char*,int,int,int ,int ,int ,int *,int *,int ) ;
 int decode_full_block ;
 int endOnInputSize ;
 int noDict ;

__attribute__((used)) static int LZ4_decompress_safe_withSmallPrefix(const char *source, char *dest,
            int compressedSize,
            int maxOutputSize,
            size_t prefixSize)
{
 return LZ4_decompress_generic(source, dest,
          compressedSize, maxOutputSize,
          endOnInputSize, decode_full_block,
          noDict,
          (BYTE *)dest - prefixSize, ((void*)0), 0);
}
