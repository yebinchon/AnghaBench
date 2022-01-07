
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int EINVAL ;
 int MMU_NOTIFY_CLEAR ;
 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 unsigned long PMD_MASK ;
 scalar_t__ PMD_SIZE ;
 int VM_BUG_ON (int ) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,int *,struct mm_struct*,unsigned long,scalar_t__) ;
 int p4d_bad (int ) ;
 scalar_t__ p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int pgd_bad (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pmd_bad (int ) ;
 scalar_t__ pmd_huge (int ) ;
 int * pmd_lock (struct mm_struct*,int *) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_trans_huge (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int pud_bad (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int __follow_pte_pmd(struct mm_struct *mm, unsigned long address,
       struct mmu_notifier_range *range,
       pte_t **ptepp, pmd_t **pmdpp, spinlock_t **ptlp)
{
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *ptep;

 pgd = pgd_offset(mm, address);
 if (pgd_none(*pgd) || unlikely(pgd_bad(*pgd)))
  goto out;

 p4d = p4d_offset(pgd, address);
 if (p4d_none(*p4d) || unlikely(p4d_bad(*p4d)))
  goto out;

 pud = pud_offset(p4d, address);
 if (pud_none(*pud) || unlikely(pud_bad(*pud)))
  goto out;

 pmd = pmd_offset(pud, address);
 VM_BUG_ON(pmd_trans_huge(*pmd));

 if (pmd_huge(*pmd)) {
  if (!pmdpp)
   goto out;

  if (range) {
   mmu_notifier_range_init(range, MMU_NOTIFY_CLEAR, 0,
      ((void*)0), mm, address & PMD_MASK,
      (address & PMD_MASK) + PMD_SIZE);
   mmu_notifier_invalidate_range_start(range);
  }
  *ptlp = pmd_lock(mm, pmd);
  if (pmd_huge(*pmd)) {
   *pmdpp = pmd;
   return 0;
  }
  spin_unlock(*ptlp);
  if (range)
   mmu_notifier_invalidate_range_end(range);
 }

 if (pmd_none(*pmd) || unlikely(pmd_bad(*pmd)))
  goto out;

 if (range) {
  mmu_notifier_range_init(range, MMU_NOTIFY_CLEAR, 0, ((void*)0), mm,
     address & PAGE_MASK,
     (address & PAGE_MASK) + PAGE_SIZE);
  mmu_notifier_invalidate_range_start(range);
 }
 ptep = pte_offset_map_lock(mm, pmd, address, ptlp);
 if (!pte_present(*ptep))
  goto unlock;
 *ptepp = ptep;
 return 0;
unlock:
 pte_unmap_unlock(ptep, *ptlp);
 if (range)
  mmu_notifier_invalidate_range_end(range);
out:
 return -EINVAL;
}
