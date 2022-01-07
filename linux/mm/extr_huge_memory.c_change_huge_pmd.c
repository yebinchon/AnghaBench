
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int BUG_ON (int) ;
 int HPAGE_PMD_NR ;
 int VM_BUG_ON (int) ;
 int * __pmd_trans_huge_lock (int *,struct vm_area_struct*) ;
 scalar_t__ is_huge_zero_pmd (int ) ;
 int is_pmd_migration_entry (int ) ;
 scalar_t__ is_swap_pmd (int ) ;
 scalar_t__ is_write_migration_entry (int ) ;
 int make_migration_entry_read (int *) ;
 int pmd_mk_savedwrite (int ) ;
 int pmd_modify (int ,int ) ;
 scalar_t__ pmd_protnone (int ) ;
 int pmd_swp_mksoft_dirty (int ) ;
 scalar_t__ pmd_swp_soft_dirty (int ) ;
 int pmd_to_swp_entry (int ) ;
 scalar_t__ pmd_write (int ) ;
 int pmdp_invalidate (struct vm_area_struct*,unsigned long,int *) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_unlock (int *) ;
 int swp_entry_to_pmd (int ) ;
 scalar_t__ vma_is_anonymous (struct vm_area_struct*) ;

int change_huge_pmd(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long addr, pgprot_t newprot, int prot_numa)
{
 struct mm_struct *mm = vma->vm_mm;
 spinlock_t *ptl;
 pmd_t entry;
 bool preserve_write;
 int ret;

 ptl = __pmd_trans_huge_lock(pmd, vma);
 if (!ptl)
  return 0;

 preserve_write = prot_numa && pmd_write(*pmd);
 ret = 1;
 if (prot_numa && is_huge_zero_pmd(*pmd))
  goto unlock;

 if (prot_numa && pmd_protnone(*pmd))
  goto unlock;
 entry = pmdp_invalidate(vma, addr, pmd);

 entry = pmd_modify(entry, newprot);
 if (preserve_write)
  entry = pmd_mk_savedwrite(entry);
 ret = HPAGE_PMD_NR;
 set_pmd_at(mm, addr, pmd, entry);
 BUG_ON(vma_is_anonymous(vma) && !preserve_write && pmd_write(entry));
unlock:
 spin_unlock(ptl);
 return ret;
}
