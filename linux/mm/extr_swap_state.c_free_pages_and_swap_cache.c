
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int free_swap_cache (struct page*) ;
 int lru_add_drain () ;
 int release_pages (struct page**,int) ;

void free_pages_and_swap_cache(struct page **pages, int nr)
{
 struct page **pagep = pages;
 int i;

 lru_add_drain();
 for (i = 0; i < nr; i++)
  free_swap_cache(pagep[i]);
 release_pages(pagep, nr);
}
