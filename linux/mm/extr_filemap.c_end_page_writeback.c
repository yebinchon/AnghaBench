
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG () ;
 int ClearPageReclaim (struct page*) ;
 int PG_writeback ;
 scalar_t__ PageReclaim (struct page*) ;
 int rotate_reclaimable_page (struct page*) ;
 int smp_mb__after_atomic () ;
 int test_clear_page_writeback (struct page*) ;
 int wake_up_page (struct page*,int ) ;

void end_page_writeback(struct page *page)
{







 if (PageReclaim(page)) {
  ClearPageReclaim(page);
  rotate_reclaimable_page(page);
 }

 if (!test_clear_page_writeback(page))
  BUG();

 smp_mb__after_atomic();
 wake_up_page(page, PG_writeback);
}
