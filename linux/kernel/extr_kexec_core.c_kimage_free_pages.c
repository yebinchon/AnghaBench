
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageReserved (struct page*) ;
 int __free_pages (struct page*,unsigned int) ;
 int arch_kexec_pre_free_pages (int ,unsigned int) ;
 int page_address (struct page*) ;
 unsigned int page_private (struct page*) ;

__attribute__((used)) static void kimage_free_pages(struct page *page)
{
 unsigned int order, count, i;

 order = page_private(page);
 count = 1 << order;

 arch_kexec_pre_free_pages(page_address(page), count);

 for (i = 0; i < count; i++)
  ClearPageReserved(page + i);
 __free_pages(page, order);
}
