
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int HPAGE_PMD_NR ;
 int NR_FILE_MAPPED ;
 int NR_FILE_PMDMAPPED ;
 int NR_SHMEM_PMDMAPPED ;
 int PageLocked (struct page*) ;
 scalar_t__ PageMlocked (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 scalar_t__ PageTransCompound (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int SetPageDoubleMap (int ) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_WARN_ON_ONCE (int) ;
 int __inc_node_page_state (struct page*,int ) ;
 int __mod_lruvec_page_state (struct page*,int ,int) ;
 scalar_t__ atomic_inc_and_test (int *) ;
 int clear_page_mlock (int ) ;
 int compound_head (struct page*) ;
 int * compound_mapcount_ptr (struct page*) ;
 int lock_page_memcg (struct page*) ;
 scalar_t__ page_mapping (struct page*) ;
 int unlock_page_memcg (struct page*) ;

void page_add_file_rmap(struct page *page, bool compound)
{
 int i, nr = 1;

 VM_BUG_ON_PAGE(compound && !PageTransHuge(page), page);
 lock_page_memcg(page);
 if (compound && PageTransHuge(page)) {
  for (i = 0, nr = 0; i < HPAGE_PMD_NR; i++) {
   if (atomic_inc_and_test(&page[i]._mapcount))
    nr++;
  }
  if (!atomic_inc_and_test(compound_mapcount_ptr(page)))
   goto out;
  if (PageSwapBacked(page))
   __inc_node_page_state(page, NR_SHMEM_PMDMAPPED);
  else
   __inc_node_page_state(page, NR_FILE_PMDMAPPED);
 } else {
  if (PageTransCompound(page) && page_mapping(page)) {
   VM_WARN_ON_ONCE(!PageLocked(page));

   SetPageDoubleMap(compound_head(page));
   if (PageMlocked(page))
    clear_page_mlock(compound_head(page));
  }
  if (!atomic_inc_and_test(&page->_mapcount))
   goto out;
 }
 __mod_lruvec_page_state(page, NR_FILE_MAPPED, nr);
out:
 unlock_page_memcg(page);
}
