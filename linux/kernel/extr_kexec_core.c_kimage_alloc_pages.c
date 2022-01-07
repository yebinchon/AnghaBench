
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int * mapping; } ;
typedef int gfp_t ;


 int SetPageReserved (struct page*) ;
 int __GFP_ZERO ;
 struct page* alloc_pages (int,unsigned int) ;
 int arch_kexec_post_alloc_pages (int ,unsigned int,int) ;
 int clear_highpage (struct page*) ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int page_address (struct page*) ;
 int set_page_private (struct page*,unsigned int) ;

__attribute__((used)) static struct page *kimage_alloc_pages(gfp_t gfp_mask, unsigned int order)
{
 struct page *pages;

 if (fatal_signal_pending(current))
  return ((void*)0);
 pages = alloc_pages(gfp_mask & ~__GFP_ZERO, order);
 if (pages) {
  unsigned int count, i;

  pages->mapping = ((void*)0);
  set_page_private(pages, order);
  count = 1 << order;
  for (i = 0; i < count; i++)
   SetPageReserved(pages + i);

  arch_kexec_post_alloc_pages(page_address(pages), count,
         gfp_mask);

  if (gfp_mask & __GFP_ZERO)
   for (i = 0; i < count; i++)
    clear_highpage(pages + i);
 }

 return pages;
}
