
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int KASAN_FREE_PAGE ;
 unsigned int PAGE_SIZE ;
 int PageHighMem (struct page*) ;
 int kasan_poison_shadow (int ,unsigned int,int ) ;
 scalar_t__ likely (int) ;
 int page_address (struct page*) ;

void kasan_free_pages(struct page *page, unsigned int order)
{
 if (likely(!PageHighMem(page)))
  kasan_poison_shadow(page_address(page),
    PAGE_SIZE << order,
    KASAN_FREE_PAGE);
}
