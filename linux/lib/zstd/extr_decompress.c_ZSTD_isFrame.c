
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int const ZSTD_MAGICNUMBER ;
 int const ZSTD_MAGIC_SKIPPABLE_START ;
 int ZSTD_readLE32 (void const*) ;

unsigned ZSTD_isFrame(const void *buffer, size_t size)
{
 if (size < 4)
  return 0;
 {
  U32 const magic = ZSTD_readLE32(buffer);
  if (magic == ZSTD_MAGICNUMBER)
   return 1;
  if ((magic & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START)
   return 1;
 }
 return 0;
}
