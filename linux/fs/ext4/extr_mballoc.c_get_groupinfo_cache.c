
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int BUG_ON (int) ;
 int EXT4_MIN_BLOCK_LOG_SIZE ;
 struct kmem_cache** ext4_groupinfo_caches ;

__attribute__((used)) static struct kmem_cache *get_groupinfo_cache(int blocksize_bits)
{
 int cache_index = blocksize_bits - EXT4_MIN_BLOCK_LOG_SIZE;
 struct kmem_cache *cachep = ext4_groupinfo_caches[cache_index];

 BUG_ON(!cachep);
 return cachep;
}
