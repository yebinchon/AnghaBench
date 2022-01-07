
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int kimage_entry_t ;


 int PAGE_SHIFT ;
 struct page* boot_pfn_to_page (int) ;
 int kimage_free_pages (struct page*) ;

__attribute__((used)) static void kimage_free_entry(kimage_entry_t entry)
{
 struct page *page;

 page = boot_pfn_to_page(entry >> PAGE_SHIFT);
 kimage_free_pages(page);
}
