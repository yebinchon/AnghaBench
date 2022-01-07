
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int HPAGE_PMD_NR ;
 int NR_FILE_MAPPED ;
 int NR_FILE_PMDMAPPED ;
 int NR_SHMEM_PMDMAPPED ;
 int PageHead (struct page*) ;
 int PageHuge (struct page*) ;
 int PageMlocked (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __dec_node_page_state (struct page*,int ) ;
 int __mod_lruvec_page_state (struct page*,int ,int) ;
 scalar_t__ atomic_add_negative (int,int *) ;
 int atomic_dec (int *) ;
 int clear_page_mlock (struct page*) ;
 int * compound_mapcount_ptr (struct page*) ;
 int lock_page_memcg (struct page*) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page_memcg (struct page*) ;

__attribute__((used)) static void page_remove_file_rmap(struct page *page, bool compound)
{
 int i, nr = 1;

 VM_BUG_ON_PAGE(compound && !PageHead(page), page);
 lock_page_memcg(page);


 if (unlikely(PageHuge(page))) {

  atomic_dec(compound_mapcount_ptr(page));
  goto out;
 }


 if (compound && PageTransHuge(page)) {
  for (i = 0, nr = 0; i < HPAGE_PMD_NR; i++) {
   if (atomic_add_negative(-1, &page[i]._mapcount))
    nr++;
  }
  if (!atomic_add_negative(-1, compound_mapcount_ptr(page)))
   goto out;
  if (PageSwapBacked(page))
   __dec_node_page_state(page, NR_SHMEM_PMDMAPPED);
  else
   __dec_node_page_state(page, NR_FILE_PMDMAPPED);
 } else {
  if (!atomic_add_negative(-1, &page->_mapcount))
   goto out;
 }






 __mod_lruvec_page_state(page, NR_FILE_MAPPED, -nr);

 if (unlikely(PageMlocked(page)))
  clear_page_mlock(page);
out:
 unlock_page_memcg(page);
}
