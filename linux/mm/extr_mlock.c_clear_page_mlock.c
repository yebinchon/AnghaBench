
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int NR_MLOCK ;
 scalar_t__ PageUnevictable (struct page*) ;
 int TestClearPageMlocked (struct page*) ;
 int UNEVICTABLE_PGCLEARED ;
 int UNEVICTABLE_PGSTRANDED ;
 int count_vm_event (int ) ;
 int hpage_nr_pages (struct page*) ;
 int isolate_lru_page (struct page*) ;
 int mod_zone_page_state (int ,int ,int ) ;
 int page_zone (struct page*) ;
 int putback_lru_page (struct page*) ;

void clear_page_mlock(struct page *page)
{
 if (!TestClearPageMlocked(page))
  return;

 mod_zone_page_state(page_zone(page), NR_MLOCK,
       -hpage_nr_pages(page));
 count_vm_event(UNEVICTABLE_PGCLEARED);






 if (!isolate_lru_page(page)) {
  putback_lru_page(page);
 } else {



  if (PageUnevictable(page))
   count_vm_event(UNEVICTABLE_PGSTRANDED);
 }
}
