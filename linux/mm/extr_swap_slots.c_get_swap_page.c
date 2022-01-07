
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ val; } ;
typedef TYPE_1__ swp_entry_t ;
struct swap_slots_cache {int alloc_lock; scalar_t__ nr; int cur; TYPE_1__* slots; } ;
struct page {int dummy; } ;


 int CONFIG_THP_SWAP ;
 int HPAGE_PMD_NR ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ PageTransHuge (struct page*) ;
 scalar_t__ check_cache_active () ;
 int get_swap_pages (int,TYPE_1__*,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ mem_cgroup_try_charge_swap (struct page*,TYPE_1__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_swap_page (struct page*,TYPE_1__) ;
 struct swap_slots_cache* raw_cpu_ptr (int *) ;
 scalar_t__ refill_swap_slots_cache (struct swap_slots_cache*) ;
 int swp_slots ;

swp_entry_t get_swap_page(struct page *page)
{
 swp_entry_t entry, *pentry;
 struct swap_slots_cache *cache;

 entry.val = 0;

 if (PageTransHuge(page)) {
  if (IS_ENABLED(CONFIG_THP_SWAP))
   get_swap_pages(1, &entry, HPAGE_PMD_NR);
  goto out;
 }
 cache = raw_cpu_ptr(&swp_slots);

 if (likely(check_cache_active() && cache->slots)) {
  mutex_lock(&cache->alloc_lock);
  if (cache->slots) {
repeat:
   if (cache->nr) {
    pentry = &cache->slots[cache->cur++];
    entry = *pentry;
    pentry->val = 0;
    cache->nr--;
   } else {
    if (refill_swap_slots_cache(cache))
     goto repeat;
   }
  }
  mutex_unlock(&cache->alloc_lock);
  if (entry.val)
   goto out;
 }

 get_swap_pages(1, &entry, 1);
out:
 if (mem_cgroup_try_charge_swap(page, entry)) {
  put_swap_page(page, entry);
  entry.val = 0;
 }
 return entry;
}
