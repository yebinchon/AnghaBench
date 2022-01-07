
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seeks; int scan_objects; int count_objects; } ;
struct mb_cache {int c_bucket_bits; unsigned long c_max_entries; int c_shrink_work; struct mb_cache* c_hash; TYPE_1__ c_shrink; int c_list_lock; int c_list; } ;
struct hlist_bl_head {int dummy; } ;


 int DEFAULT_SEEKS ;
 int GFP_KERNEL ;
 int INIT_HLIST_BL_HEAD (struct mb_cache*) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int kfree (struct mb_cache*) ;
 struct mb_cache* kmalloc_array (unsigned long,int,int ) ;
 struct mb_cache* kzalloc (int,int ) ;
 int mb_cache_count ;
 int mb_cache_scan ;
 int mb_cache_shrink_worker ;
 scalar_t__ register_shrinker (TYPE_1__*) ;
 int spin_lock_init (int *) ;

struct mb_cache *mb_cache_create(int bucket_bits)
{
 struct mb_cache *cache;
 unsigned long bucket_count = 1UL << bucket_bits;
 unsigned long i;

 cache = kzalloc(sizeof(struct mb_cache), GFP_KERNEL);
 if (!cache)
  goto err_out;
 cache->c_bucket_bits = bucket_bits;
 cache->c_max_entries = bucket_count << 4;
 INIT_LIST_HEAD(&cache->c_list);
 spin_lock_init(&cache->c_list_lock);
 cache->c_hash = kmalloc_array(bucket_count,
          sizeof(struct hlist_bl_head),
          GFP_KERNEL);
 if (!cache->c_hash) {
  kfree(cache);
  goto err_out;
 }
 for (i = 0; i < bucket_count; i++)
  INIT_HLIST_BL_HEAD(&cache->c_hash[i]);

 cache->c_shrink.count_objects = mb_cache_count;
 cache->c_shrink.scan_objects = mb_cache_scan;
 cache->c_shrink.seeks = DEFAULT_SEEKS;
 if (register_shrinker(&cache->c_shrink)) {
  kfree(cache->c_hash);
  kfree(cache);
  goto err_out;
 }

 INIT_WORK(&cache->c_shrink_work, mb_cache_shrink_worker);

 return cache;

err_out:
 return ((void*)0);
}
