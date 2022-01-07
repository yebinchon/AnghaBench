
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct page {int dummy; } ;


 unsigned int PAGE_SIZE ;
 int PageHighMem (struct page*) ;
 int kasan_unpoison_shadow (int ,unsigned int) ;
 int page_address (struct page*) ;
 int page_kasan_tag_set (struct page*,int ) ;
 int random_tag () ;
 scalar_t__ unlikely (int ) ;

void kasan_alloc_pages(struct page *page, unsigned int order)
{
 u8 tag;
 unsigned long i;

 if (unlikely(PageHighMem(page)))
  return;

 tag = random_tag();
 for (i = 0; i < (1 << order); i++)
  page_kasan_tag_set(page + i, tag);
 kasan_unpoison_shadow(page_address(page), PAGE_SIZE << order);
}
