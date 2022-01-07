
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct page {int _mapcount; } ;


 int NR_ANON_MAPPED ;
 int NR_ANON_THPS ;
 int PageTransCompound (struct page*) ;
 int PageTransHuge (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 int __SetPageSwapBacked (struct page*) ;
 int __inc_node_page_state (struct page*,int ) ;
 int __mod_node_page_state (int ,int ,int) ;
 int __page_set_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int atomic_set (int *,int ) ;
 int * compound_mapcount_ptr (struct page*) ;
 int hpage_nr_pages (struct page*) ;
 int page_pgdat (struct page*) ;

void page_add_new_anon_rmap(struct page *page,
 struct vm_area_struct *vma, unsigned long address, bool compound)
{
 int nr = compound ? hpage_nr_pages(page) : 1;

 VM_BUG_ON_VMA(address < vma->vm_start || address >= vma->vm_end, vma);
 __SetPageSwapBacked(page);
 if (compound) {
  VM_BUG_ON_PAGE(!PageTransHuge(page), page);

  atomic_set(compound_mapcount_ptr(page), 0);
  __inc_node_page_state(page, NR_ANON_THPS);
 } else {

  VM_BUG_ON_PAGE(PageTransCompound(page), page);

  atomic_set(&page->_mapcount, 0);
 }
 __mod_node_page_state(page_pgdat(page), NR_ANON_MAPPED, nr);
 __page_set_anon_rmap(page, vma, address, 1);
}
