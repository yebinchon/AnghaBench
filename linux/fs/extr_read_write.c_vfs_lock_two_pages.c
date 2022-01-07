
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;


 int lock_page (struct page*) ;
 int swap (struct page*,struct page*) ;

__attribute__((used)) static void vfs_lock_two_pages(struct page *page1, struct page *page2)
{

 if (page1->index > page2->index)
  swap(page1, page2);

 lock_page(page1);
 if (page1 != page2)
  lock_page(page2);
}
