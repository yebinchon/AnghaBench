
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int unpoison_page (struct page*) ;

__attribute__((used)) static void unpoison_pages(struct page *page, int n)
{
 int i;

 for (i = 0; i < n; i++)
  unpoison_page(page + i);
}
