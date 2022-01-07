
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int lru_cache_add (struct page*) ;
 int put_page (struct page*) ;

void putback_lru_page(struct page *page)
{
 lru_cache_add(page);
 put_page(page);
}
