
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ PageHighMem (struct page*) ;
 int alloc_highmem ;
 struct page* alloc_image_page (int ) ;
 int alloc_normal ;
 int copy_bm ;
 int memory_bm_set_bit (int *,int ) ;
 int page_to_pfn (struct page*) ;

__attribute__((used)) static unsigned long preallocate_image_pages(unsigned long nr_pages, gfp_t mask)
{
 unsigned long nr_alloc = 0;

 while (nr_pages > 0) {
  struct page *page;

  page = alloc_image_page(mask);
  if (!page)
   break;
  memory_bm_set_bit(&copy_bm, page_to_pfn(page));
  if (PageHighMem(page))
   alloc_highmem++;
  else
   alloc_normal++;
  nr_pages--;
  nr_alloc++;
 }

 return nr_alloc;
}
