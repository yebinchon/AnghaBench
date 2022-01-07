
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct anon_vma* anon_vma; } ;
struct page {int mapping; } ;
struct anon_vma {int dummy; } ;
struct address_space {int dummy; } ;


 int PAGE_MAPPING_ANON ;
 int PageLocked (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 int WRITE_ONCE (int ,struct address_space*) ;
 struct page* compound_head (struct page*) ;

void page_move_anon_rmap(struct page *page, struct vm_area_struct *vma)
{
 struct anon_vma *anon_vma = vma->anon_vma;

 page = compound_head(page);

 VM_BUG_ON_PAGE(!PageLocked(page), page);
 VM_BUG_ON_VMA(!anon_vma, vma);

 anon_vma = (void *) anon_vma + PAGE_MAPPING_ANON;





 WRITE_ONCE(page->mapping, (struct address_space *) anon_vma);
}
