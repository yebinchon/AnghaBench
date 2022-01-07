
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int * mapping; int index; } ;
struct address_space {unsigned int nrexceptional; unsigned int nrpages; int i_pages; } ;


 int PageHuge (struct page*) ;
 int PageLocked (struct page*) ;
 int PageTail (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int XA_STATE (int ,int *,int ) ;
 unsigned int compound_nr (struct page*) ;
 int compound_order (struct page*) ;
 int mapping_set_update (int *,struct address_space*) ;
 int smp_wmb () ;
 int xas ;
 int xas_init_marks (int *) ;
 int xas_set_order (int *,int ,int ) ;
 int xas_store (int *,void*) ;

__attribute__((used)) static void page_cache_delete(struct address_space *mapping,
       struct page *page, void *shadow)
{
 XA_STATE(xas, &mapping->i_pages, page->index);
 unsigned int nr = 1;

 mapping_set_update(&xas, mapping);


 if (!PageHuge(page)) {
  xas_set_order(&xas, page->index, compound_order(page));
  nr = compound_nr(page);
 }

 VM_BUG_ON_PAGE(!PageLocked(page), page);
 VM_BUG_ON_PAGE(PageTail(page), page);
 VM_BUG_ON_PAGE(nr != 1 && shadow, page);

 xas_store(&xas, shadow);
 xas_init_marks(&xas);

 page->mapping = ((void*)0);


 if (shadow) {
  mapping->nrexceptional += nr;






  smp_wmb();
 }
 mapping->nrpages -= nr;
}
