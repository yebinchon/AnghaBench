
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb_cache {int dummy; } ;


 int mb_cache_destroy (struct mb_cache*) ;

void ext2_xattr_destroy_cache(struct mb_cache *cache)
{
 if (cache)
  mb_cache_destroy(cache);
}
