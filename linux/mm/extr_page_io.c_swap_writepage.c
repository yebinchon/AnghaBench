
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int __swap_writepage (struct page*,struct writeback_control*,int ) ;
 int end_page_writeback (struct page*) ;
 int end_swap_bio_write ;
 scalar_t__ frontswap_store (struct page*) ;
 int set_page_writeback (struct page*) ;
 scalar_t__ try_to_free_swap (struct page*) ;
 int unlock_page (struct page*) ;

int swap_writepage(struct page *page, struct writeback_control *wbc)
{
 int ret = 0;

 if (try_to_free_swap(page)) {
  unlock_page(page);
  goto out;
 }
 if (frontswap_store(page) == 0) {
  set_page_writeback(page);
  unlock_page(page);
  end_page_writeback(page);
  goto out;
 }
 ret = __swap_writepage(page, wbc, end_swap_bio_write);
out:
 return ret;
}
