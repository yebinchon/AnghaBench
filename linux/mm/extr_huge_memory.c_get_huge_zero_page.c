
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_TRANSHUGE ;
 int HPAGE_PMD_ORDER ;
 struct page* READ_ONCE (int ) ;
 int THP_ZERO_PAGE_ALLOC ;
 int THP_ZERO_PAGE_ALLOC_FAILED ;
 int __GFP_MOVABLE ;
 int __GFP_ZERO ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages (int,int ) ;
 int atomic_inc_not_zero (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ cmpxchg (int *,int *,struct page*) ;
 int compound_order (struct page*) ;
 int count_vm_event (int ) ;
 int huge_zero_page ;
 int huge_zero_refcount ;
 scalar_t__ likely (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static struct page *get_huge_zero_page(void)
{
 struct page *zero_page;
retry:
 if (likely(atomic_inc_not_zero(&huge_zero_refcount)))
  return READ_ONCE(huge_zero_page);

 zero_page = alloc_pages((GFP_TRANSHUGE | __GFP_ZERO) & ~__GFP_MOVABLE,
   HPAGE_PMD_ORDER);
 if (!zero_page) {
  count_vm_event(THP_ZERO_PAGE_ALLOC_FAILED);
  return ((void*)0);
 }
 count_vm_event(THP_ZERO_PAGE_ALLOC);
 preempt_disable();
 if (cmpxchg(&huge_zero_page, ((void*)0), zero_page)) {
  preempt_enable();
  __free_pages(zero_page, compound_order(zero_page));
  goto retry;
 }


 atomic_set(&huge_zero_refcount, 2);
 preempt_enable();
 return READ_ONCE(huge_zero_page);
}
