
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SetPageChecked (struct page*) ;
 int __set_page_dirty_buffers (struct page*) ;

__attribute__((used)) static int jdata_set_page_dirty(struct page *page)
{
 SetPageChecked(page);
 return __set_page_dirty_buffers(page);
}
