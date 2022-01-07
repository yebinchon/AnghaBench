
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct vm_area_struct* vm_next; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {struct vm_area_struct* mmap; scalar_t__ locked_vm; int mmap_sem; int flags; } ;


 int FIRST_USER_ADDRESS ;
 int MMF_OOM_SKIP ;
 int USER_PGTABLES_CEILING ;
 int VM_ACCOUNT ;
 int VM_LOCKED ;
 int __oom_reap_task_mm (struct mm_struct*) ;
 int arch_exit_mmap (struct mm_struct*) ;
 int down_write (int *) ;
 int flush_cache_mm (struct mm_struct*) ;
 int free_pgtables (struct mmu_gather*,struct vm_area_struct*,int ,int ) ;
 int lru_add_drain () ;
 int mm_is_oom_victim (struct mm_struct*) ;
 int mmu_notifier_release (struct mm_struct*) ;
 int munlock_vma_pages_all (struct vm_area_struct*) ;
 struct vm_area_struct* remove_vma (struct vm_area_struct*) ;
 int set_bit (int ,int *) ;
 int tlb_finish_mmu (struct mmu_gather*,int ,int) ;
 int tlb_gather_mmu (struct mmu_gather*,struct mm_struct*,int ,int) ;
 scalar_t__ unlikely (int ) ;
 int unmap_vmas (struct mmu_gather*,struct vm_area_struct*,int ,int) ;
 int up_write (int *) ;
 int vm_unacct_memory (unsigned long) ;
 scalar_t__ vma_pages (struct vm_area_struct*) ;

void exit_mmap(struct mm_struct *mm)
{
 struct mmu_gather tlb;
 struct vm_area_struct *vma;
 unsigned long nr_accounted = 0;


 mmu_notifier_release(mm);

 if (unlikely(mm_is_oom_victim(mm))) {
  (void)__oom_reap_task_mm(mm);

  set_bit(MMF_OOM_SKIP, &mm->flags);
  down_write(&mm->mmap_sem);
  up_write(&mm->mmap_sem);
 }

 if (mm->locked_vm) {
  vma = mm->mmap;
  while (vma) {
   if (vma->vm_flags & VM_LOCKED)
    munlock_vma_pages_all(vma);
   vma = vma->vm_next;
  }
 }

 arch_exit_mmap(mm);

 vma = mm->mmap;
 if (!vma)
  return;

 lru_add_drain();
 flush_cache_mm(mm);
 tlb_gather_mmu(&tlb, mm, 0, -1);


 unmap_vmas(&tlb, vma, 0, -1);
 free_pgtables(&tlb, vma, FIRST_USER_ADDRESS, USER_PGTABLES_CEILING);
 tlb_finish_mmu(&tlb, 0, -1);





 while (vma) {
  if (vma->vm_flags & VM_ACCOUNT)
   nr_accounted += vma_pages(vma);
  vma = remove_vma(vma);
 }
 vm_unacct_memory(nr_accounted);
}
