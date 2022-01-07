
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int NR_MLOCK ;
 scalar_t__ PageCompound (struct page*) ;
 scalar_t__ PageDoubleMap (struct page*) ;
 int PageLocked (struct page*) ;
 int PageTail (struct page*) ;
 int TestSetPageMlocked (struct page*) ;
 int UNEVICTABLE_PGMLOCKED ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int count_vm_event (int ) ;
 int hpage_nr_pages (struct page*) ;
 int isolate_lru_page (struct page*) ;
 int mod_zone_page_state (int ,int ,int ) ;
 int page_zone (struct page*) ;
 int putback_lru_page (struct page*) ;

void mlock_vma_page(struct page *page)
{

 BUG_ON(!PageLocked(page));

 VM_BUG_ON_PAGE(PageTail(page), page);
 VM_BUG_ON_PAGE(PageCompound(page) && PageDoubleMap(page), page);

 if (!TestSetPageMlocked(page)) {
  mod_zone_page_state(page_zone(page), NR_MLOCK,
        hpage_nr_pages(page));
  count_vm_event(UNEVICTABLE_PGMLOCKED);
  if (!isolate_lru_page(page))
   putback_lru_page(page);
 }
}
