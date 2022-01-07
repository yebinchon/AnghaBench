
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page_vma_mapped_walk {unsigned long address; int pmd; scalar_t__ pte; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;


 int CONFIG_TRANSPARENT_HUGEPAGE ;
 scalar_t__ IS_ENABLED (int ) ;
 int WARN_ON_ONCE (int) ;
 int clear_page_idle (struct page*) ;
 scalar_t__ page_vma_mapped_walk (struct page_vma_mapped_walk*) ;
 scalar_t__ pmdp_clear_young_notify (struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ ptep_clear_young_notify (struct vm_area_struct*,unsigned long,scalar_t__) ;
 int set_page_young (struct page*) ;

__attribute__((used)) static bool page_idle_clear_pte_refs_one(struct page *page,
     struct vm_area_struct *vma,
     unsigned long addr, void *arg)
{
 struct page_vma_mapped_walk pvmw = {
  .page = page,
  .vma = vma,
  .address = addr,
 };
 bool referenced = 0;

 while (page_vma_mapped_walk(&pvmw)) {
  addr = pvmw.address;
  if (pvmw.pte) {




   if (ptep_clear_young_notify(vma, addr, pvmw.pte))
    referenced = 1;
  } else if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
   if (pmdp_clear_young_notify(vma, addr, pvmw.pmd))
    referenced = 1;
  } else {

   WARN_ON_ONCE(1);
  }
 }

 if (referenced) {
  clear_page_idle(page);





  set_page_young(page);
 }
 return 1;
}
