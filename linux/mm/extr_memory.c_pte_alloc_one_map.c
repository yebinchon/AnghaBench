
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int ptl; int address; int * pmd; int pte; int * prealloc_pte; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_mm; } ;


 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 int mm_inc_nr_ptes (int ) ;
 scalar_t__ pmd_devmap_trans_unstable (int *) ;
 int pmd_lock (int ,int *) ;
 int pmd_none (int ) ;
 int pmd_populate (int ,int *,int *) ;
 int pte_alloc (int ,int *) ;
 int pte_offset_map_lock (int ,int *,int ,int *) ;
 int spin_unlock (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static vm_fault_t pte_alloc_one_map(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;

 if (!pmd_none(*vmf->pmd))
  goto map_pte;
 if (vmf->prealloc_pte) {
  vmf->ptl = pmd_lock(vma->vm_mm, vmf->pmd);
  if (unlikely(!pmd_none(*vmf->pmd))) {
   spin_unlock(vmf->ptl);
   goto map_pte;
  }

  mm_inc_nr_ptes(vma->vm_mm);
  pmd_populate(vma->vm_mm, vmf->pmd, vmf->prealloc_pte);
  spin_unlock(vmf->ptl);
  vmf->prealloc_pte = ((void*)0);
 } else if (unlikely(pte_alloc(vma->vm_mm, vmf->pmd))) {
  return VM_FAULT_OOM;
 }
map_pte:
 if (pmd_devmap_trans_unstable(vmf->pmd))
  return VM_FAULT_NOPAGE;
 vmf->pte = pte_offset_map_lock(vma->vm_mm, vmf->pmd, vmf->address,
   &vmf->ptl);
 return 0;
}
