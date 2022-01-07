
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int KASAN_KMALLOC_REDZONE ;
 unsigned long compound_nr (struct page*) ;
 int kasan_poison_shadow (int ,int ,int ) ;
 int page_address (struct page*) ;
 int page_kasan_tag_reset (struct page*) ;
 int page_size (struct page*) ;

void kasan_poison_slab(struct page *page)
{
 unsigned long i;

 for (i = 0; i < compound_nr(page); i++)
  page_kasan_tag_reset(page + i);
 kasan_poison_shadow(page_address(page), page_size(page),
   KASAN_KMALLOC_REDZONE);
}
