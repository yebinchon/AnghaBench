
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int INOCACHE_HASHSIZE_MAX ;
 int INOCACHE_HASHSIZE_MIN ;

__attribute__((used)) static int calculate_inocache_hashsize(uint32_t flash_size)
{







 int size_mb = flash_size / 1024 / 1024;
 int hashsize = (size_mb * 2) & ~0x3f;

 if (hashsize < INOCACHE_HASHSIZE_MIN)
  return INOCACHE_HASHSIZE_MIN;
 if (hashsize > INOCACHE_HASHSIZE_MAX)
  return INOCACHE_HASHSIZE_MAX;

 return hashsize;
}
