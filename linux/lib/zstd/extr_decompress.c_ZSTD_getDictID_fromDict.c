
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ZSTD_DICT_MAGIC ;
 int ZSTD_readLE32 (char const*) ;

unsigned ZSTD_getDictID_fromDict(const void *dict, size_t dictSize)
{
 if (dictSize < 8)
  return 0;
 if (ZSTD_readLE32(dict) != ZSTD_DICT_MAGIC)
  return 0;
 return ZSTD_readLE32((const char *)dict + 4);
}
