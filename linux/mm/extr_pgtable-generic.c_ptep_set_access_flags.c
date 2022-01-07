
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;


 int flush_tlb_fix_spurious_fault (struct vm_area_struct*,unsigned long) ;
 int pte_same (int ,int ) ;
 int set_pte_at (int ,unsigned long,int *,int ) ;

int ptep_set_access_flags(struct vm_area_struct *vma,
     unsigned long address, pte_t *ptep,
     pte_t entry, int dirty)
{
 int changed = !pte_same(*ptep, entry);
 if (changed) {
  set_pte_at(vma->vm_mm, address, ptep, entry);
  flush_tlb_fix_spurious_fault(vma, address);
 }
 return changed;
}
