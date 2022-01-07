
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int page_poisoning_enabled () ;
 int poison_pages (struct page*,int) ;
 int unpoison_pages (struct page*,int) ;

void kernel_poison_pages(struct page *page, int numpages, int enable)
{
 if (!page_poisoning_enabled())
  return;

 if (enable)
  unpoison_pages(page, numpages);
 else
  poison_pages(page, numpages);
}
