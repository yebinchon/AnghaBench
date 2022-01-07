
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_slots_cache {scalar_t__ n_ret; int free_lock; int * slots_ret; } ;


 scalar_t__ SWAP_SLOTS_CACHE_SIZE ;
 scalar_t__ likely (int) ;
 struct swap_slots_cache* raw_cpu_ptr (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int swapcache_free_entries (int *,int) ;
 int swp_slots ;
 scalar_t__ use_swap_slot_cache ;

int free_swap_slot(swp_entry_t entry)
{
 struct swap_slots_cache *cache;

 cache = raw_cpu_ptr(&swp_slots);
 if (likely(use_swap_slot_cache && cache->slots_ret)) {
  spin_lock_irq(&cache->free_lock);

  if (!use_swap_slot_cache || !cache->slots_ret) {
   spin_unlock_irq(&cache->free_lock);
   goto direct_free;
  }
  if (cache->n_ret >= SWAP_SLOTS_CACHE_SIZE) {






   swapcache_free_entries(cache->slots_ret, cache->n_ret);
   cache->n_ret = 0;
  }
  cache->slots_ret[cache->n_ret++] = entry;
  spin_unlock_irq(&cache->free_lock);
 } else {
direct_free:
  swapcache_free_entries(&entry, 1);
 }

 return 0;
}
