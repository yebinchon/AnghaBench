
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int nr_to_write; int sync_mode; } ;
struct page {struct address_space* mapping; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* writepage ) (struct page*,struct writeback_control*) ;} ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int WB_SYNC_ALL ;
 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 int filemap_check_errors (struct address_space*) ;
 int get_page (struct page*) ;
 int put_page (struct page*) ;
 int stub1 (struct page*,struct writeback_control*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

int write_one_page(struct page *page)
{
 struct address_space *mapping = page->mapping;
 int ret = 0;
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = 1,
 };

 BUG_ON(!PageLocked(page));

 wait_on_page_writeback(page);

 if (clear_page_dirty_for_io(page)) {
  get_page(page);
  ret = mapping->a_ops->writepage(page, &wbc);
  if (ret == 0)
   wait_on_page_writeback(page);
  put_page(page);
 } else {
  unlock_page(page);
 }

 if (!ret)
  ret = filemap_check_errors(mapping);
 return ret;
}
