
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;


 int end_page_writeback (struct page*) ;
 int orangefs_writepage_locked (struct page*,struct writeback_control*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int orangefs_writepage(struct page *page, struct writeback_control *wbc)
{
 int ret;
 ret = orangefs_writepage_locked(page, wbc);
 unlock_page(page);
 end_page_writeback(page);
 return ret;
}
