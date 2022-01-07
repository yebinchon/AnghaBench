
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_slots_cache {int nr; int slots; scalar_t__ cur; } ;


 int SWAP_SLOTS_CACHE_SIZE ;
 int get_swap_pages (int ,int ,int) ;
 scalar_t__ swap_slot_cache_active ;
 int use_swap_slot_cache ;

__attribute__((used)) static int refill_swap_slots_cache(struct swap_slots_cache *cache)
{
 if (!use_swap_slot_cache || cache->nr)
  return 0;

 cache->cur = 0;
 if (swap_slot_cache_active)
  cache->nr = get_swap_pages(SWAP_SLOTS_CACHE_SIZE,
        cache->slots, 1);

 return cache->nr;
}
