
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int nr_to_write; int sync_mode; } ;
struct page {int dummy; } ;


 int WB_SYNC_ALL ;
 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 int end_page_writeback (struct page*) ;
 int orangefs_writepage_locked (struct page*,struct writeback_control*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int orangefs_launder_page(struct page *page)
{
 int r = 0;
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = 0,
 };
 wait_on_page_writeback(page);
 if (clear_page_dirty_for_io(page)) {
  r = orangefs_writepage_locked(page, &wbc);
  end_page_writeback(page);
 }
 return r;
}
