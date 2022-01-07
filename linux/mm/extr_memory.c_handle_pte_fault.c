
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int flags; int ptl; int * pte; int address; TYPE_1__* vma; int orig_pte; int * pmd; } ;
typedef int pte_t ;
struct TYPE_6__ {int vm_mm; } ;


 int FAULT_FLAG_WRITE ;
 int barrier () ;
 int do_anonymous_page (struct vm_fault*) ;
 int do_fault (struct vm_fault*) ;
 int do_numa_page (struct vm_fault*) ;
 int do_swap_page (struct vm_fault*) ;
 int do_wp_page (struct vm_fault*) ;
 int flush_tlb_fix_spurious_fault (TYPE_1__*,int ) ;
 scalar_t__ pmd_devmap_trans_unstable (int *) ;
 int pmd_none (int ) ;
 int pte_lockptr (int ,int *) ;
 int pte_mkdirty (int ) ;
 int pte_mkyoung (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map (int *,int ) ;
 int pte_present (int ) ;
 scalar_t__ pte_protnone (int ) ;
 int pte_same (int ,int ) ;
 int pte_unmap (int *) ;
 int pte_unmap_unlock (int *,int ) ;
 int pte_write (int ) ;
 scalar_t__ ptep_set_access_flags (TYPE_1__*,int ,int *,int ,int) ;
 int spin_lock (int ) ;
 scalar_t__ unlikely (int) ;
 int update_mmu_cache (TYPE_1__*,int ,int *) ;
 scalar_t__ vma_is_accessible (TYPE_1__*) ;
 scalar_t__ vma_is_anonymous (TYPE_1__*) ;

__attribute__((used)) static vm_fault_t handle_pte_fault(struct vm_fault *vmf)
{
 pte_t entry;

 if (unlikely(pmd_none(*vmf->pmd))) {






  vmf->pte = ((void*)0);
 } else {

  if (pmd_devmap_trans_unstable(vmf->pmd))
   return 0;






  vmf->pte = pte_offset_map(vmf->pmd, vmf->address);
  vmf->orig_pte = *vmf->pte;
  barrier();
  if (pte_none(vmf->orig_pte)) {
   pte_unmap(vmf->pte);
   vmf->pte = ((void*)0);
  }
 }

 if (!vmf->pte) {
  if (vma_is_anonymous(vmf->vma))
   return do_anonymous_page(vmf);
  else
   return do_fault(vmf);
 }

 if (!pte_present(vmf->orig_pte))
  return do_swap_page(vmf);

 if (pte_protnone(vmf->orig_pte) && vma_is_accessible(vmf->vma))
  return do_numa_page(vmf);

 vmf->ptl = pte_lockptr(vmf->vma->vm_mm, vmf->pmd);
 spin_lock(vmf->ptl);
 entry = vmf->orig_pte;
 if (unlikely(!pte_same(*vmf->pte, entry)))
  goto unlock;
 if (vmf->flags & FAULT_FLAG_WRITE) {
  if (!pte_write(entry))
   return do_wp_page(vmf);
  entry = pte_mkdirty(entry);
 }
 entry = pte_mkyoung(entry);
 if (ptep_set_access_flags(vmf->vma, vmf->address, vmf->pte, entry,
    vmf->flags & FAULT_FLAG_WRITE)) {
  update_mmu_cache(vmf->vma, vmf->address, vmf->pte);
 } else {






  if (vmf->flags & FAULT_FLAG_WRITE)
   flush_tlb_fix_spurious_fault(vmf->vma, vmf->address);
 }
unlock:
 pte_unmap_unlock(vmf->pte, vmf->ptl);
 return 0;
}
