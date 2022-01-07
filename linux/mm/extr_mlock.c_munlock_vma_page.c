
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_3__ {int lru_lock; } ;
typedef TYPE_1__ pg_data_t ;


 int BUG_ON (int) ;
 int NR_MLOCK ;
 int PageLocked (struct page*) ;
 int PageTail (struct page*) ;
 int TestClearPageMlocked (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int __mod_zone_page_state (int ,int ,int) ;
 scalar_t__ __munlock_isolate_lru_page (struct page*,int) ;
 int __munlock_isolated_page (struct page*) ;
 int __munlock_isolation_failed (struct page*) ;
 int hpage_nr_pages (struct page*) ;
 TYPE_1__* page_pgdat (struct page*) ;
 int page_zone (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

unsigned int munlock_vma_page(struct page *page)
{
 int nr_pages;
 pg_data_t *pgdat = page_pgdat(page);


 BUG_ON(!PageLocked(page));

 VM_BUG_ON_PAGE(PageTail(page), page);






 spin_lock_irq(&pgdat->lru_lock);

 if (!TestClearPageMlocked(page)) {

  nr_pages = 1;
  goto unlock_out;
 }

 nr_pages = hpage_nr_pages(page);
 __mod_zone_page_state(page_zone(page), NR_MLOCK, -nr_pages);

 if (__munlock_isolate_lru_page(page, 1)) {
  spin_unlock_irq(&pgdat->lru_lock);
  __munlock_isolated_page(page);
  goto out;
 }
 __munlock_isolation_failed(page);

unlock_out:
 spin_unlock_irq(&pgdat->lru_lock);

out:
 return nr_pages - 1;
}
