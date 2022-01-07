
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int KB ;
 int LZ4_decompress_generic (char const*,char*,int,int,int ,int ,int ,int *,int *,int ) ;
 int decode_full_block ;
 int endOnInputSize ;
 int withPrefix64k ;

int LZ4_decompress_safe_withPrefix64k(const char *source, char *dest,
          int compressedSize, int maxOutputSize)
{
 return LZ4_decompress_generic(source, dest,
          compressedSize, maxOutputSize,
          endOnInputSize, decode_full_block,
          withPrefix64k,
          (BYTE *)dest - 64 * KB, ((void*)0), 0);
}
