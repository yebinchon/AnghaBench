
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageWriteback (struct page*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int lock_page (struct page*) ;
 int set_page_writeback (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void nilfs_begin_page_io(struct page *page)
{
 if (!page || PageWriteback(page))




  return;

 lock_page(page);
 clear_page_dirty_for_io(page);
 set_page_writeback(page);
 unlock_page(page);
}
