
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int unlock_page (struct page*) ;

__attribute__((used)) static void vfs_unlock_two_pages(struct page *page1, struct page *page2)
{
 unlock_page(page1);
 if (page1 != page2)
  unlock_page(page2);
}
