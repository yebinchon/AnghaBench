
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct list_head {int dummy; } ;


 int list_del (int *) ;
 int list_empty (struct list_head*) ;
 struct page* lru_to_page (struct list_head*) ;
 int put_page (struct page*) ;

void put_pages_list(struct list_head *pages)
{
 while (!list_empty(pages)) {
  struct page *victim;

  victim = lru_to_page(pages);
  list_del(&victim->lru);
  put_page(victim);
 }
}
