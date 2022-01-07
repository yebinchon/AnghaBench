
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int anon_vma; struct vm_area_struct* vm_prev; struct mm_struct* vm_mm; } ;
struct mm_struct {unsigned long locked_vm; int page_table_lock; } ;


 int ENOMEM ;
 int EPERM ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int VM_EXEC ;
 int VM_GROWSDOWN ;
 int VM_LOCKED ;
 int VM_READ ;
 int VM_WRITE ;
 int acct_stack_growth (struct vm_area_struct*,unsigned long,unsigned long) ;
 int anon_vma_interval_tree_post_update_vma (struct vm_area_struct*) ;
 int anon_vma_interval_tree_pre_update_vma (struct vm_area_struct*) ;
 int anon_vma_lock_write (int ) ;
 int anon_vma_prepare (struct vm_area_struct*) ;
 int anon_vma_unlock_write (int ) ;
 int khugepaged_enter_vma_merge (struct vm_area_struct*,int) ;
 unsigned long mmap_min_addr ;
 int perf_event_mmap (struct vm_area_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long stack_guard_gap ;
 scalar_t__ unlikely (int ) ;
 int validate_mm (struct mm_struct*) ;
 int vm_stat_account (struct mm_struct*,int,unsigned long) ;
 int vma_gap_update (struct vm_area_struct*) ;

int expand_downwards(struct vm_area_struct *vma,
       unsigned long address)
{
 struct mm_struct *mm = vma->vm_mm;
 struct vm_area_struct *prev;
 int error = 0;

 address &= PAGE_MASK;
 if (address < mmap_min_addr)
  return -EPERM;


 prev = vma->vm_prev;

 if (prev && !(prev->vm_flags & VM_GROWSDOWN) &&
   (prev->vm_flags & (VM_WRITE|VM_READ|VM_EXEC))) {
  if (address - prev->vm_end < stack_guard_gap)
   return -ENOMEM;
 }


 if (unlikely(anon_vma_prepare(vma)))
  return -ENOMEM;






 anon_vma_lock_write(vma->anon_vma);


 if (address < vma->vm_start) {
  unsigned long size, grow;

  size = vma->vm_end - address;
  grow = (vma->vm_start - address) >> PAGE_SHIFT;

  error = -ENOMEM;
  if (grow <= vma->vm_pgoff) {
   error = acct_stack_growth(vma, size, grow);
   if (!error) {
    spin_lock(&mm->page_table_lock);
    if (vma->vm_flags & VM_LOCKED)
     mm->locked_vm += grow;
    vm_stat_account(mm, vma->vm_flags, grow);
    anon_vma_interval_tree_pre_update_vma(vma);
    vma->vm_start = address;
    vma->vm_pgoff -= grow;
    anon_vma_interval_tree_post_update_vma(vma);
    vma_gap_update(vma);
    spin_unlock(&mm->page_table_lock);

    perf_event_mmap(vma);
   }
  }
 }
 anon_vma_unlock_write(vma->anon_vma);
 khugepaged_enter_vma_merge(vma, vma->vm_flags);
 validate_mm(mm);
 return error;
}
