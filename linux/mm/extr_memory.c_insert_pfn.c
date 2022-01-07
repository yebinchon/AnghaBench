
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pgprot_t ;
typedef int pfn_t ;


 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 int WARN_ON_ONCE (int) ;
 int * get_locked_pte (struct mm_struct*,unsigned long,int **) ;
 int is_zero_pfn (scalar_t__) ;
 int maybe_mkwrite (int ,struct vm_area_struct*) ;
 scalar_t__ pfn_t_devmap (int ) ;
 int pfn_t_pte (int ,int ) ;
 scalar_t__ pfn_t_to_pfn (int ) ;
 int pte_mkdevmap (int ) ;
 int pte_mkdirty (int ) ;
 int pte_mkspecial (int ) ;
 int pte_mkyoung (int ) ;
 int pte_none (int ) ;
 scalar_t__ pte_pfn (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 scalar_t__ ptep_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,int) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int *) ;

__attribute__((used)) static vm_fault_t insert_pfn(struct vm_area_struct *vma, unsigned long addr,
   pfn_t pfn, pgprot_t prot, bool mkwrite)
{
 struct mm_struct *mm = vma->vm_mm;
 pte_t *pte, entry;
 spinlock_t *ptl;

 pte = get_locked_pte(mm, addr, &ptl);
 if (!pte)
  return VM_FAULT_OOM;
 if (!pte_none(*pte)) {
  if (mkwrite) {
   if (pte_pfn(*pte) != pfn_t_to_pfn(pfn)) {
    WARN_ON_ONCE(!is_zero_pfn(pte_pfn(*pte)));
    goto out_unlock;
   }
   entry = pte_mkyoung(*pte);
   entry = maybe_mkwrite(pte_mkdirty(entry), vma);
   if (ptep_set_access_flags(vma, addr, pte, entry, 1))
    update_mmu_cache(vma, addr, pte);
  }
  goto out_unlock;
 }


 if (pfn_t_devmap(pfn))
  entry = pte_mkdevmap(pfn_t_pte(pfn, prot));
 else
  entry = pte_mkspecial(pfn_t_pte(pfn, prot));

 if (mkwrite) {
  entry = pte_mkyoung(entry);
  entry = maybe_mkwrite(pte_mkdirty(entry), vma);
 }

 set_pte_at(mm, addr, pte, entry);
 update_mmu_cache(vma, addr, pte);

out_unlock:
 pte_unmap_unlock(pte, ptl);
 return VM_FAULT_NOPAGE;
}
