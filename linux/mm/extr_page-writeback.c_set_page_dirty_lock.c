
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int lock_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;

int set_page_dirty_lock(struct page *page)
{
 int ret;

 lock_page(page);
 ret = set_page_dirty(page);
 unlock_page(page);
 return ret;
}
