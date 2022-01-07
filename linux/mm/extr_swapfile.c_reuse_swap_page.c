
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct swap_info_struct {int flags; int lock; } ;
struct page {int dummy; } ;


 int PageKsm (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int PageTransCompound (struct page*) ;
 int PageWriteback (struct page*) ;
 int SWP_STABLE_WRITES ;
 int SetPageDirty (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 struct page* compound_head (struct page*) ;
 int delete_from_swap_cache (struct page*) ;
 scalar_t__ likely (int) ;
 int page_private (struct page*) ;
 int page_swapcount (struct page*) ;
 int page_trans_huge_map_swapcount (struct page*,int*,int*) ;
 int spin_unlock (int *) ;
 struct swap_info_struct* swap_info_get (TYPE_1__) ;
 scalar_t__ unlikely (int ) ;

bool reuse_swap_page(struct page *page, int *total_map_swapcount)
{
 int count, total_mapcount, total_swapcount;

 VM_BUG_ON_PAGE(!PageLocked(page), page);
 if (unlikely(PageKsm(page)))
  return 0;
 count = page_trans_huge_map_swapcount(page, &total_mapcount,
           &total_swapcount);
 if (total_map_swapcount)
  *total_map_swapcount = total_mapcount + total_swapcount;
 if (count == 1 && PageSwapCache(page) &&
     (likely(!PageTransCompound(page)) ||

      total_swapcount == page_swapcount(page))) {
  if (!PageWriteback(page)) {
   page = compound_head(page);
   delete_from_swap_cache(page);
   SetPageDirty(page);
  } else {
   swp_entry_t entry;
   struct swap_info_struct *p;

   entry.val = page_private(page);
   p = swap_info_get(entry);
   if (p->flags & SWP_STABLE_WRITES) {
    spin_unlock(&p->lock);
    return 0;
   }
   spin_unlock(&p->lock);
  }
 }

 return count <= 1;
}
