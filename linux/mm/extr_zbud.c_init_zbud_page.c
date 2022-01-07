
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbud_header {scalar_t__ under_reclaim; int lru; int buddy; scalar_t__ last_chunks; scalar_t__ first_chunks; } ;
struct page {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 struct zbud_header* page_address (struct page*) ;

__attribute__((used)) static struct zbud_header *init_zbud_page(struct page *page)
{
 struct zbud_header *zhdr = page_address(page);
 zhdr->first_chunks = 0;
 zhdr->last_chunks = 0;
 INIT_LIST_HEAD(&zhdr->buddy);
 INIT_LIST_HEAD(&zhdr->lru);
 zhdr->under_reclaim = 0;
 return zhdr;
}
