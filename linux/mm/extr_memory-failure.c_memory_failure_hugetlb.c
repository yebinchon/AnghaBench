
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long flags; } ;


 int EBUSY ;
 int MF_COUNT_INCREASED ;
 int MF_DELAYED ;
 int MF_IGNORED ;
 int MF_MSG_FREE_HUGE ;
 int MF_MSG_NON_PMD_HUGE ;
 int MF_MSG_UNMAP_FAILED ;
 scalar_t__ PMD_SIZE ;
 scalar_t__ PageHWPoison (struct page*) ;
 scalar_t__ TestClearPageHWPoison (struct page*) ;
 scalar_t__ TestSetPageHWPoison (struct page*) ;
 int action_result (unsigned long,int ,int ) ;
 struct page* compound_head (struct page*) ;
 int dissolve_free_huge_page (struct page*) ;
 int get_hwpoison_page (struct page*) ;
 scalar_t__ huge_page_size (int ) ;
 scalar_t__ hwpoison_filter (struct page*) ;
 int hwpoison_user_mappings (struct page*,unsigned long,int,struct page**) ;
 int identify_page_state (unsigned long,struct page*,unsigned long) ;
 int lock_page (struct page*) ;
 int num_poisoned_pages_dec () ;
 int num_poisoned_pages_inc () ;
 int page_hstate (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pr_err (char*,unsigned long) ;
 int put_hwpoison_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int memory_failure_hugetlb(unsigned long pfn, int flags)
{
 struct page *p = pfn_to_page(pfn);
 struct page *head = compound_head(p);
 int res;
 unsigned long page_flags;

 if (TestSetPageHWPoison(head)) {
  pr_err("Memory failure: %#lx: already hardware poisoned\n",
         pfn);
  return 0;
 }

 num_poisoned_pages_inc();

 if (!(flags & MF_COUNT_INCREASED) && !get_hwpoison_page(p)) {



  lock_page(head);
  if (PageHWPoison(head)) {
   if ((hwpoison_filter(p) && TestClearPageHWPoison(p))
       || (p != head && TestSetPageHWPoison(head))) {
    num_poisoned_pages_dec();
    unlock_page(head);
    return 0;
   }
  }
  unlock_page(head);
  dissolve_free_huge_page(p);
  action_result(pfn, MF_MSG_FREE_HUGE, MF_DELAYED);
  return 0;
 }

 lock_page(head);
 page_flags = head->flags;

 if (!PageHWPoison(head)) {
  pr_err("Memory failure: %#lx: just unpoisoned\n", pfn);
  num_poisoned_pages_dec();
  unlock_page(head);
  put_hwpoison_page(head);
  return 0;
 }
 if (huge_page_size(page_hstate(head)) > PMD_SIZE) {
  action_result(pfn, MF_MSG_NON_PMD_HUGE, MF_IGNORED);
  res = -EBUSY;
  goto out;
 }

 if (!hwpoison_user_mappings(p, pfn, flags, &head)) {
  action_result(pfn, MF_MSG_UNMAP_FAILED, MF_IGNORED);
  res = -EBUSY;
  goto out;
 }

 res = identify_page_state(pfn, p, page_flags);
out:
 unlock_page(head);
 return res;
}
