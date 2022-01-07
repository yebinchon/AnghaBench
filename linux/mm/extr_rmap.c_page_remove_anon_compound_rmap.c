
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int CONFIG_TRANSPARENT_HUGEPAGE ;
 int HPAGE_PMD_NR ;
 int IS_ENABLED (int ) ;
 int NR_ANON_MAPPED ;
 int NR_ANON_THPS ;
 int PageHuge (struct page*) ;
 int PageMlocked (struct page*) ;
 scalar_t__ TestClearPageDoubleMap (struct page*) ;
 int __dec_node_page_state (struct page*,int ) ;
 int __mod_node_page_state (int ,int ,int) ;
 scalar_t__ atomic_add_negative (int,int *) ;
 int clear_page_mlock (struct page*) ;
 int * compound_mapcount_ptr (struct page*) ;
 int deferred_split_huge_page (struct page*) ;
 int page_pgdat (struct page*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void page_remove_anon_compound_rmap(struct page *page)
{
 int i, nr;

 if (!atomic_add_negative(-1, compound_mapcount_ptr(page)))
  return;


 if (unlikely(PageHuge(page)))
  return;

 if (!IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE))
  return;

 __dec_node_page_state(page, NR_ANON_THPS);

 if (TestClearPageDoubleMap(page)) {




  for (i = 0, nr = 0; i < HPAGE_PMD_NR; i++) {
   if (atomic_add_negative(-1, &page[i]._mapcount))
    nr++;
  }
 } else {
  nr = HPAGE_PMD_NR;
 }

 if (unlikely(PageMlocked(page)))
  clear_page_mlock(page);

 if (nr) {
  __mod_node_page_state(page_pgdat(page), NR_ANON_MAPPED, -nr);
  deferred_split_huge_page(page);
 }
}
