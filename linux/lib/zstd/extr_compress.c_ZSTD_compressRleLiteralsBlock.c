
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int U16 ;
typedef int BYTE ;


 int ZSTD_writeLE16 (int * const,int ) ;
 int ZSTD_writeLE32 (int * const,int) ;
 int set_rle ;

__attribute__((used)) static size_t ZSTD_compressRleLiteralsBlock(void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{
 BYTE *const ostart = (BYTE * const)dst;
 U32 const flSize = 1 + (srcSize > 31) + (srcSize > 4095);

 (void)dstCapacity;

 switch (flSize) {
 case 1: ostart[0] = (BYTE)((U32)set_rle + (srcSize << 3)); break;
 case 2: ZSTD_writeLE16(ostart, (U16)((U32)set_rle + (1 << 2) + (srcSize << 4))); break;
 default:
 case 3: ZSTD_writeLE32(ostart, (U32)((U32)set_rle + (3 << 2) + (srcSize << 4))); break;
 }

 ostart[flSize] = *(const BYTE *)src;
 return flSize + 1;
}
