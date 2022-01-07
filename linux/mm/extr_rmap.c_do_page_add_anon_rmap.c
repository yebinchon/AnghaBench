
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int _mapcount; } ;
typedef int atomic_t ;


 int NR_ANON_MAPPED ;
 int NR_ANON_THPS ;
 int PageKsm (struct page*) ;
 int PageLocked (struct page*) ;
 int PageTransHuge (struct page*) ;
 int RMAP_COMPOUND ;
 int RMAP_EXCLUSIVE ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __inc_node_page_state (struct page*,int ) ;
 int __mod_node_page_state (int ,int ,int) ;
 int __page_check_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int __page_set_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int atomic_inc_and_test (int *) ;
 int * compound_mapcount_ptr (struct page*) ;
 int hpage_nr_pages (struct page*) ;
 int page_pgdat (struct page*) ;
 scalar_t__ unlikely (int ) ;

void do_page_add_anon_rmap(struct page *page,
 struct vm_area_struct *vma, unsigned long address, int flags)
{
 bool compound = flags & RMAP_COMPOUND;
 bool first;

 if (compound) {
  atomic_t *mapcount;
  VM_BUG_ON_PAGE(!PageLocked(page), page);
  VM_BUG_ON_PAGE(!PageTransHuge(page), page);
  mapcount = compound_mapcount_ptr(page);
  first = atomic_inc_and_test(mapcount);
 } else {
  first = atomic_inc_and_test(&page->_mapcount);
 }

 if (first) {
  int nr = compound ? hpage_nr_pages(page) : 1;






  if (compound)
   __inc_node_page_state(page, NR_ANON_THPS);
  __mod_node_page_state(page_pgdat(page), NR_ANON_MAPPED, nr);
 }
 if (unlikely(PageKsm(page)))
  return;

 VM_BUG_ON_PAGE(!PageLocked(page), page);


 if (first)
  __page_set_anon_rmap(page, vma, address,
    flags & RMAP_EXCLUSIVE);
 else
  __page_check_anon_rmap(page, vma, address);
}
