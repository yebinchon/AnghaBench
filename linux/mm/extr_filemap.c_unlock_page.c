
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 int BUILD_BUG_ON (int) ;
 int PG_locked ;
 int PG_waiters ;
 int PageLocked (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 scalar_t__ clear_bit_unlock_is_negative_byte (int ,int *) ;
 struct page* compound_head (struct page*) ;
 int wake_up_page_bit (struct page*,int ) ;

void unlock_page(struct page *page)
{
 BUILD_BUG_ON(PG_waiters != 7);
 page = compound_head(page);
 VM_BUG_ON_PAGE(!PageLocked(page), page);
 if (clear_bit_unlock_is_negative_byte(PG_locked, &page->flags))
  wake_up_page_bit(page, PG_locked);
}
