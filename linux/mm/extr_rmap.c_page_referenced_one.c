
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page_vma_mapped_walk {unsigned long address; int pmd; scalar_t__ pte; struct vm_area_struct* vma; struct page* page; } ;
struct page_referenced_arg {int vm_flags; int mapcount; int referenced; } ;
struct page {int dummy; } ;


 int CONFIG_TRANSPARENT_HUGEPAGE ;
 scalar_t__ IS_ENABLED (int ) ;
 int VM_LOCKED ;
 int VM_SEQ_READ ;
 int WARN_ON_ONCE (int) ;
 int clear_page_idle (struct page*) ;
 scalar_t__ likely (int) ;
 scalar_t__ page_vma_mapped_walk (struct page_vma_mapped_walk*) ;
 int page_vma_mapped_walk_done (struct page_vma_mapped_walk*) ;
 scalar_t__ pmdp_clear_flush_young_notify (struct vm_area_struct*,unsigned long,int ) ;
 scalar_t__ ptep_clear_flush_young_notify (struct vm_area_struct*,unsigned long,scalar_t__) ;
 scalar_t__ test_and_clear_page_young (struct page*) ;

__attribute__((used)) static bool page_referenced_one(struct page *page, struct vm_area_struct *vma,
   unsigned long address, void *arg)
{
 struct page_referenced_arg *pra = arg;
 struct page_vma_mapped_walk pvmw = {
  .page = page,
  .vma = vma,
  .address = address,
 };
 int referenced = 0;

 while (page_vma_mapped_walk(&pvmw)) {
  address = pvmw.address;

  if (vma->vm_flags & VM_LOCKED) {
   page_vma_mapped_walk_done(&pvmw);
   pra->vm_flags |= VM_LOCKED;
   return 0;
  }

  if (pvmw.pte) {
   if (ptep_clear_flush_young_notify(vma, address,
      pvmw.pte)) {
    if (likely(!(vma->vm_flags & VM_SEQ_READ)))
     referenced++;
   }
  } else if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
   if (pmdp_clear_flush_young_notify(vma, address,
      pvmw.pmd))
    referenced++;
  } else {

   WARN_ON_ONCE(1);
  }

  pra->mapcount--;
 }

 if (referenced)
  clear_page_idle(page);
 if (test_and_clear_page_young(page))
  referenced++;

 if (referenced) {
  pra->referenced++;
  pra->vm_flags |= vma->vm_flags;
 }

 if (!pra->mapcount)
  return 0;

 return 1;
}
