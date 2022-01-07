
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageSlab (struct page*) ;
 int drain_all_pages (int ) ;
 int drop_slab_node (int ) ;
 scalar_t__ is_free_buddy_page (struct page*) ;
 int lru_add_drain_all () ;
 int page_to_nid (struct page*) ;
 int page_zone (struct page*) ;

void shake_page(struct page *p, int access)
{
 if (PageHuge(p))
  return;

 if (!PageSlab(p)) {
  lru_add_drain_all();
  if (PageLRU(p))
   return;
  drain_all_pages(page_zone(p));
  if (PageLRU(p) || is_free_buddy_page(p))
   return;
 }





 if (access)
  drop_slab_node(page_to_nid(p));
}
