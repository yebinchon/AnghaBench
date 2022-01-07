
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {unsigned long address; int * pte; struct vm_area_struct* vma; int orig_pte; int pgoff; int * pmd; int flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
typedef int pmd_t ;


 int FAULT_FLAG_ALLOW_RETRY ;
 int HPAGE_PMD_NR ;
 int PAGE_SIZE ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_RETRY ;
 int do_swap_page (struct vm_fault*) ;
 int down_read (int *) ;
 scalar_t__ hugepage_vma_revalidate (struct mm_struct*,unsigned long,struct vm_area_struct**) ;
 int is_swap_pte (int ) ;
 int linear_page_index (struct vm_area_struct*,unsigned long) ;
 int * mm_find_pmd (struct mm_struct*,unsigned long) ;
 void* pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int trace_mm_collapse_huge_page_swapin (struct mm_struct*,int,int,int) ;

__attribute__((used)) static bool __collapse_huge_page_swapin(struct mm_struct *mm,
     struct vm_area_struct *vma,
     unsigned long address, pmd_t *pmd,
     int referenced)
{
 int swapped_in = 0;
 vm_fault_t ret = 0;
 struct vm_fault vmf = {
  .vma = vma,
  .address = address,
  .flags = FAULT_FLAG_ALLOW_RETRY,
  .pmd = pmd,
  .pgoff = linear_page_index(vma, address),
 };


 if (referenced < HPAGE_PMD_NR/2) {
  trace_mm_collapse_huge_page_swapin(mm, swapped_in, referenced, 0);
  return 0;
 }
 vmf.pte = pte_offset_map(pmd, address);
 for (; vmf.address < address + HPAGE_PMD_NR*PAGE_SIZE;
   vmf.pte++, vmf.address += PAGE_SIZE) {
  vmf.orig_pte = *vmf.pte;
  if (!is_swap_pte(vmf.orig_pte))
   continue;
  swapped_in++;
  ret = do_swap_page(&vmf);


  if (ret & VM_FAULT_RETRY) {
   down_read(&mm->mmap_sem);
   if (hugepage_vma_revalidate(mm, address, &vmf.vma)) {

    trace_mm_collapse_huge_page_swapin(mm, swapped_in, referenced, 0);
    return 0;
   }

   if (mm_find_pmd(mm, address) != pmd) {
    trace_mm_collapse_huge_page_swapin(mm, swapped_in, referenced, 0);
    return 0;
   }
  }
  if (ret & VM_FAULT_ERROR) {
   trace_mm_collapse_huge_page_swapin(mm, swapped_in, referenced, 0);
   return 0;
  }

  vmf.pte = pte_offset_map(pmd, vmf.address);
 }
 vmf.pte--;
 pte_unmap(vmf.pte);
 trace_mm_collapse_huge_page_swapin(mm, swapped_in, referenced, 1);
 return 1;
}
