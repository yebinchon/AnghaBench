
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {TYPE_1__* zone_pgdat; } ;
struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int lru_lock; } ;


 int NR_MLOCK ;
 scalar_t__ TestClearPageMlocked (struct page*) ;
 int __mod_zone_page_state (struct zone*,int ,int) ;
 scalar_t__ __munlock_isolate_lru_page (struct page*,int) ;
 int __munlock_isolated_page (struct page*) ;
 int __munlock_isolation_failed (struct page*) ;
 int __putback_lru_fast (struct pagevec*,int) ;
 int __putback_lru_fast_prepare (struct page*,struct pagevec*,int*) ;
 int get_page (struct page*) ;
 int lock_page (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 int pagevec_release (struct pagevec*) ;
 int put_page (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void __munlock_pagevec(struct pagevec *pvec, struct zone *zone)
{
 int i;
 int nr = pagevec_count(pvec);
 int delta_munlocked = -nr;
 struct pagevec pvec_putback;
 int pgrescued = 0;

 pagevec_init(&pvec_putback);


 spin_lock_irq(&zone->zone_pgdat->lru_lock);
 for (i = 0; i < nr; i++) {
  struct page *page = pvec->pages[i];

  if (TestClearPageMlocked(page)) {




   if (__munlock_isolate_lru_page(page, 0))
    continue;
   else
    __munlock_isolation_failed(page);
  } else {
   delta_munlocked++;
  }







  pagevec_add(&pvec_putback, pvec->pages[i]);
  pvec->pages[i] = ((void*)0);
 }
 __mod_zone_page_state(zone, NR_MLOCK, delta_munlocked);
 spin_unlock_irq(&zone->zone_pgdat->lru_lock);


 pagevec_release(&pvec_putback);


 for (i = 0; i < nr; i++) {
  struct page *page = pvec->pages[i];

  if (page) {
   lock_page(page);
   if (!__putback_lru_fast_prepare(page, &pvec_putback,
     &pgrescued)) {




    get_page(page);
    __munlock_isolated_page(page);
    unlock_page(page);
    put_page(page);
   }
  }
 }





 if (pagevec_count(&pvec_putback))
  __putback_lru_fast(&pvec_putback, pgrescued);
}
