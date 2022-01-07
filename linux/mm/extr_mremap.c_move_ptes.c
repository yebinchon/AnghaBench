
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int SINGLE_DEPTH_NESTING ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 int drop_rmap_locks (struct vm_area_struct*) ;
 int flush_tlb_batched_pending (struct mm_struct*) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int move_pte (int ,int ,unsigned long,unsigned long) ;
 int move_soft_dirty_pte (int ) ;
 int * pte_lockptr (struct mm_struct*,int *) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 scalar_t__ pte_present (int ) ;
 int pte_unmap (int *) ;
 int pte_unmap_unlock (int *,int *) ;
 int ptep_get_and_clear (struct mm_struct*,unsigned long,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 int take_rmap_locks (struct vm_area_struct*) ;

__attribute__((used)) static void move_ptes(struct vm_area_struct *vma, pmd_t *old_pmd,
  unsigned long old_addr, unsigned long old_end,
  struct vm_area_struct *new_vma, pmd_t *new_pmd,
  unsigned long new_addr, bool need_rmap_locks)
{
 struct mm_struct *mm = vma->vm_mm;
 pte_t *old_pte, *new_pte, pte;
 spinlock_t *old_ptl, *new_ptl;
 bool force_flush = 0;
 unsigned long len = old_end - old_addr;
 if (need_rmap_locks)
  take_rmap_locks(vma);





 old_pte = pte_offset_map_lock(mm, old_pmd, old_addr, &old_ptl);
 new_pte = pte_offset_map(new_pmd, new_addr);
 new_ptl = pte_lockptr(mm, new_pmd);
 if (new_ptl != old_ptl)
  spin_lock_nested(new_ptl, SINGLE_DEPTH_NESTING);
 flush_tlb_batched_pending(vma->vm_mm);
 arch_enter_lazy_mmu_mode();

 for (; old_addr < old_end; old_pte++, old_addr += PAGE_SIZE,
       new_pte++, new_addr += PAGE_SIZE) {
  if (pte_none(*old_pte))
   continue;

  pte = ptep_get_and_clear(mm, old_addr, old_pte);
  if (pte_present(pte))
   force_flush = 1;
  pte = move_pte(pte, new_vma->vm_page_prot, old_addr, new_addr);
  pte = move_soft_dirty_pte(pte);
  set_pte_at(mm, new_addr, new_pte, pte);
 }

 arch_leave_lazy_mmu_mode();
 if (force_flush)
  flush_tlb_range(vma, old_end - len, old_end);
 if (new_ptl != old_ptl)
  spin_unlock(new_ptl);
 pte_unmap(new_pte - 1);
 pte_unmap_unlock(old_pte - 1, old_ptl);
 if (need_rmap_locks)
  drop_rmap_locks(vma);
}
