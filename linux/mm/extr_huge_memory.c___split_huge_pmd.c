
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int start; } ;
typedef int spinlock_t ;
typedef int pmd_t ;


 unsigned long HPAGE_PMD_MASK ;
 scalar_t__ HPAGE_PMD_SIZE ;
 int MMU_NOTIFY_CLEAR ;
 scalar_t__ PageMlocked (struct page*) ;
 int VM_BUG_ON (int) ;
 int __split_huge_pmd_locked (struct vm_area_struct*,int *,int ,int) ;
 int clear_page_mlock (struct page*) ;
 scalar_t__ is_pmd_migration_entry (int ) ;
 int mmu_notifier_invalidate_range_only_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,int ,unsigned long,scalar_t__) ;
 scalar_t__ pmd_devmap (int ) ;
 int * pmd_lock (int ,int *) ;
 struct page* pmd_page (int ) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int spin_unlock (int *) ;

void __split_huge_pmd(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long address, bool freeze, struct page *page)
{
 spinlock_t *ptl;
 struct mmu_notifier_range range;

 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
    address & HPAGE_PMD_MASK,
    (address & HPAGE_PMD_MASK) + HPAGE_PMD_SIZE);
 mmu_notifier_invalidate_range_start(&range);
 ptl = pmd_lock(vma->vm_mm, pmd);





 VM_BUG_ON(freeze && !page);
 if (page && page != pmd_page(*pmd))
         goto out;

 if (pmd_trans_huge(*pmd)) {
  page = pmd_page(*pmd);
  if (PageMlocked(page))
   clear_page_mlock(page);
 } else if (!(pmd_devmap(*pmd) || is_pmd_migration_entry(*pmd)))
  goto out;
 __split_huge_pmd_locked(vma, pmd, range.start, freeze);
out:
 spin_unlock(ptl);
 mmu_notifier_invalidate_range_only_end(&range);
}
