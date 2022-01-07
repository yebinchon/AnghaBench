
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pmd_t ;
typedef int pgtable_t ;


 unsigned long HPAGE_PMD_MASK ;
 unsigned long HPAGE_PMD_SIZE ;
 scalar_t__ PMD_SIZE ;
 int SINGLE_DEPTH_NESTING ;
 int VM_BUG_ON (int) ;
 scalar_t__ WARN_ON (int) ;
 int * __pmd_trans_huge_lock (int *,struct vm_area_struct*) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,scalar_t__) ;
 int move_soft_dirty_pmd (int ) ;
 int pgtable_trans_huge_deposit (struct mm_struct*,int *,int ) ;
 int pgtable_trans_huge_withdraw (struct mm_struct*,int *) ;
 int * pmd_lockptr (struct mm_struct*,int *) ;
 scalar_t__ pmd_move_must_withdraw (int *,int *,struct vm_area_struct*) ;
 int pmd_none (int ) ;
 scalar_t__ pmd_present (int ) ;
 int pmd_trans_huge (int ) ;
 int pmdp_huge_get_and_clear (struct mm_struct*,unsigned long,int *) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;

bool move_huge_pmd(struct vm_area_struct *vma, unsigned long old_addr,
    unsigned long new_addr, unsigned long old_end,
    pmd_t *old_pmd, pmd_t *new_pmd)
{
 spinlock_t *old_ptl, *new_ptl;
 pmd_t pmd;
 struct mm_struct *mm = vma->vm_mm;
 bool force_flush = 0;

 if ((old_addr & ~HPAGE_PMD_MASK) ||
     (new_addr & ~HPAGE_PMD_MASK) ||
     old_end - old_addr < HPAGE_PMD_SIZE)
  return 0;





 if (WARN_ON(!pmd_none(*new_pmd))) {
  VM_BUG_ON(pmd_trans_huge(*new_pmd));
  return 0;
 }





 old_ptl = __pmd_trans_huge_lock(old_pmd, vma);
 if (old_ptl) {
  new_ptl = pmd_lockptr(mm, new_pmd);
  if (new_ptl != old_ptl)
   spin_lock_nested(new_ptl, SINGLE_DEPTH_NESTING);
  pmd = pmdp_huge_get_and_clear(mm, old_addr, old_pmd);
  if (pmd_present(pmd))
   force_flush = 1;
  VM_BUG_ON(!pmd_none(*new_pmd));

  if (pmd_move_must_withdraw(new_ptl, old_ptl, vma)) {
   pgtable_t pgtable;
   pgtable = pgtable_trans_huge_withdraw(mm, old_pmd);
   pgtable_trans_huge_deposit(mm, new_pmd, pgtable);
  }
  pmd = move_soft_dirty_pmd(pmd);
  set_pmd_at(mm, new_addr, new_pmd, pmd);
  if (force_flush)
   flush_tlb_range(vma, old_addr, old_addr + PMD_SIZE);
  if (new_ptl != old_ptl)
   spin_unlock(new_ptl);
  spin_unlock(old_ptl);
  return 1;
 }
 return 0;
}
