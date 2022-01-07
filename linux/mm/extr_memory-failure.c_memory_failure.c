
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long flags; int * mapping; } ;
struct dev_pagemap {int dummy; } ;


 int EBUSY ;
 int ENXIO ;
 int MF_COUNT_INCREASED ;
 int MF_DELAYED ;
 int MF_IGNORED ;
 int MF_MSG_BUDDY ;
 int MF_MSG_BUDDY_2ND ;
 int MF_MSG_DIFFERENT_COMPOUND ;
 int MF_MSG_KERNEL_HIGH_ORDER ;
 int MF_MSG_TRUNCATED_LRU ;
 int MF_MSG_UNMAP_FAILED ;
 int PageAnon (struct page*) ;
 scalar_t__ PageCompound (struct page*) ;
 int PageHWPoison (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageSwapCache (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int PageTransTail (struct page*) ;
 scalar_t__ TestClearPageHWPoison (struct page*) ;
 scalar_t__ TestSetPageHWPoison (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int action_result (unsigned long,int ,int ) ;
 struct page* compound_head (struct page*) ;
 struct dev_pagemap* get_dev_pagemap (unsigned long,int *) ;
 int get_hwpoison_page (struct page*) ;
 scalar_t__ hwpoison_filter (struct page*) ;
 int hwpoison_user_mappings (struct page*,unsigned long,int,struct page**) ;
 int identify_page_state (unsigned long,struct page*,unsigned long) ;
 scalar_t__ is_free_buddy_page (struct page*) ;
 int lock_page (struct page*) ;
 int memory_failure_dev_pagemap (unsigned long,int,struct dev_pagemap*) ;
 int memory_failure_hugetlb (unsigned long,int) ;
 int num_poisoned_pages_dec () ;
 int num_poisoned_pages_inc () ;
 int page_count (struct page*) ;
 int panic (char*,unsigned long) ;
 struct page* pfn_to_online_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;
 int pr_err (char*,unsigned long) ;
 int put_hwpoison_page (struct page*) ;
 int shake_page (struct page*,int ) ;
 int split_huge_page (struct page*) ;
 int sysctl_memory_failure_recovery ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

int memory_failure(unsigned long pfn, int flags)
{
 struct page *p;
 struct page *hpage;
 struct page *orig_head;
 struct dev_pagemap *pgmap;
 int res;
 unsigned long page_flags;

 if (!sysctl_memory_failure_recovery)
  panic("Memory failure on page %lx", pfn);

 p = pfn_to_online_page(pfn);
 if (!p) {
  if (pfn_valid(pfn)) {
   pgmap = get_dev_pagemap(pfn, ((void*)0));
   if (pgmap)
    return memory_failure_dev_pagemap(pfn, flags,
          pgmap);
  }
  pr_err("Memory failure: %#lx: memory outside kernel control\n",
   pfn);
  return -ENXIO;
 }

 if (PageHuge(p))
  return memory_failure_hugetlb(pfn, flags);
 if (TestSetPageHWPoison(p)) {
  pr_err("Memory failure: %#lx: already hardware poisoned\n",
   pfn);
  return 0;
 }

 orig_head = hpage = compound_head(p);
 num_poisoned_pages_inc();
 if (!(flags & MF_COUNT_INCREASED) && !get_hwpoison_page(p)) {
  if (is_free_buddy_page(p)) {
   action_result(pfn, MF_MSG_BUDDY, MF_DELAYED);
   return 0;
  } else {
   action_result(pfn, MF_MSG_KERNEL_HIGH_ORDER, MF_IGNORED);
   return -EBUSY;
  }
 }

 if (PageTransHuge(hpage)) {
  lock_page(p);
  if (!PageAnon(p) || unlikely(split_huge_page(p))) {
   unlock_page(p);
   if (!PageAnon(p))
    pr_err("Memory failure: %#lx: non anonymous thp\n",
     pfn);
   else
    pr_err("Memory failure: %#lx: thp split failed\n",
     pfn);
   if (TestClearPageHWPoison(p))
    num_poisoned_pages_dec();
   put_hwpoison_page(p);
   return -EBUSY;
  }
  unlock_page(p);
  VM_BUG_ON_PAGE(!page_count(p), p);
  hpage = compound_head(p);
 }
 shake_page(p, 0);

 if (!PageLRU(p) && is_free_buddy_page(p)) {
  if (flags & MF_COUNT_INCREASED)
   action_result(pfn, MF_MSG_BUDDY, MF_DELAYED);
  else
   action_result(pfn, MF_MSG_BUDDY_2ND, MF_DELAYED);
  return 0;
 }

 lock_page(p);





 if (PageCompound(p) && compound_head(p) != orig_head) {
  action_result(pfn, MF_MSG_DIFFERENT_COMPOUND, MF_IGNORED);
  res = -EBUSY;
  goto out;
 }
 if (PageHuge(p))
  page_flags = hpage->flags;
 else
  page_flags = p->flags;




 if (!PageHWPoison(p)) {
  pr_err("Memory failure: %#lx: just unpoisoned\n", pfn);
  num_poisoned_pages_dec();
  unlock_page(p);
  put_hwpoison_page(p);
  return 0;
 }
 if (hwpoison_filter(p)) {
  if (TestClearPageHWPoison(p))
   num_poisoned_pages_dec();
  unlock_page(p);
  put_hwpoison_page(p);
  return 0;
 }

 if (!PageTransTail(p) && !PageLRU(p))
  goto identify_page_state;





 wait_on_page_writeback(p);
 if (!hwpoison_user_mappings(p, pfn, flags, &hpage)) {
  action_result(pfn, MF_MSG_UNMAP_FAILED, MF_IGNORED);
  res = -EBUSY;
  goto out;
 }




 if (PageLRU(p) && !PageSwapCache(p) && p->mapping == ((void*)0)) {
  action_result(pfn, MF_MSG_TRUNCATED_LRU, MF_IGNORED);
  res = -EBUSY;
  goto out;
 }

identify_page_state:
 res = identify_page_state(pfn, p, page_flags);
out:
 unlock_page(p);
 return res;
}
