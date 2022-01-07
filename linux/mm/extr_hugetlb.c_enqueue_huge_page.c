
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct hstate {int * free_huge_pages_node; int free_huge_pages; int * hugepage_freelists; } ;


 int list_move (int *,int *) ;
 int page_to_nid (struct page*) ;

__attribute__((used)) static void enqueue_huge_page(struct hstate *h, struct page *page)
{
 int nid = page_to_nid(page);
 list_move(&page->lru, &h->hugepage_freelists[nid]);
 h->free_huge_pages++;
 h->free_huge_pages_node[nid]++;
}
