
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int pages_skipped; } ;
struct page {int dummy; } ;


 int __set_page_dirty_nobuffers (struct page*) ;
 int account_page_redirty (struct page*) ;

int redirty_page_for_writepage(struct writeback_control *wbc, struct page *page)
{
 int ret;

 wbc->pages_skipped++;
 ret = __set_page_dirty_nobuffers(page);
 account_page_redirty(page);
 return ret;
}
