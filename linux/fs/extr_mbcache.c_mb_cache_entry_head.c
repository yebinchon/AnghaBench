
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mb_cache {int c_bucket_bits; struct hlist_bl_head* c_hash; } ;
struct hlist_bl_head {int dummy; } ;


 size_t hash_32 (int ,int ) ;

__attribute__((used)) static inline struct hlist_bl_head *mb_cache_entry_head(struct mb_cache *cache,
       u32 key)
{
 return &cache->c_hash[hash_32(key, cache->c_bucket_bits)];
}
