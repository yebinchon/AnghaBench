
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageLocked (struct page*) ;
 int PageSwapCache (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int SetPageDirty (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 struct page* compound_head (struct page*) ;
 int delete_from_swap_cache (struct page*) ;
 scalar_t__ page_swapped (struct page*) ;
 scalar_t__ pm_suspended_storage () ;

int try_to_free_swap(struct page *page)
{
 VM_BUG_ON_PAGE(!PageLocked(page), page);

 if (!PageSwapCache(page))
  return 0;
 if (PageWriteback(page))
  return 0;
 if (page_swapped(page))
  return 0;
 if (pm_suspended_storage())
  return 0;

 page = compound_head(page);
 delete_from_swap_cache(page);
 SetPageDirty(page);
 return 1;
}
