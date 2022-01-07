
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pmd_t ;
typedef int * pgtable_t ;
typedef int pgprot_t ;
typedef int pfn_t ;


 int WARN_ON_ONCE (int) ;
 int is_huge_zero_pmd (int ) ;
 int maybe_pmd_mkwrite (int ,struct vm_area_struct*) ;
 int mm_inc_nr_ptes (struct mm_struct*) ;
 scalar_t__ pfn_t_devmap (int ) ;
 int pfn_t_pmd (int ,int ) ;
 scalar_t__ pfn_t_to_pfn (int ) ;
 int pgtable_trans_huge_deposit (struct mm_struct*,int *,int *) ;
 int * pmd_lock (struct mm_struct*,int *) ;
 int pmd_mkdevmap (int ) ;
 int pmd_mkdirty (int ) ;
 int pmd_mkhuge (int ) ;
 int pmd_mkyoung (int ) ;
 int pmd_none (int ) ;
 scalar_t__ pmd_pfn (int ) ;
 scalar_t__ pmdp_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,int) ;
 int pte_free (struct mm_struct*,int *) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_unlock (int *) ;
 int update_mmu_cache_pmd (struct vm_area_struct*,unsigned long,int *) ;

__attribute__((used)) static void insert_pfn_pmd(struct vm_area_struct *vma, unsigned long addr,
  pmd_t *pmd, pfn_t pfn, pgprot_t prot, bool write,
  pgtable_t pgtable)
{
 struct mm_struct *mm = vma->vm_mm;
 pmd_t entry;
 spinlock_t *ptl;

 ptl = pmd_lock(mm, pmd);
 if (!pmd_none(*pmd)) {
  if (write) {
   if (pmd_pfn(*pmd) != pfn_t_to_pfn(pfn)) {
    WARN_ON_ONCE(!is_huge_zero_pmd(*pmd));
    goto out_unlock;
   }
   entry = pmd_mkyoung(*pmd);
   entry = maybe_pmd_mkwrite(pmd_mkdirty(entry), vma);
   if (pmdp_set_access_flags(vma, addr, pmd, entry, 1))
    update_mmu_cache_pmd(vma, addr, pmd);
  }

  goto out_unlock;
 }

 entry = pmd_mkhuge(pfn_t_pmd(pfn, prot));
 if (pfn_t_devmap(pfn))
  entry = pmd_mkdevmap(entry);
 if (write) {
  entry = pmd_mkyoung(pmd_mkdirty(entry));
  entry = maybe_pmd_mkwrite(entry, vma);
 }

 if (pgtable) {
  pgtable_trans_huge_deposit(mm, pmd, pgtable);
  mm_inc_nr_ptes(mm);
  pgtable = ((void*)0);
 }

 set_pmd_at(mm, addr, pmd, entry);
 update_mmu_cache_pmd(vma, addr, pmd);

out_unlock:
 spin_unlock(ptl);
 if (pgtable)
  pte_free(mm, pgtable);
}
