
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; struct vm_area_struct* vm_next; struct vm_area_struct* vm_prev; } ;
struct mm_struct {scalar_t__ map_count; int mmap_sem; scalar_t__ locked_vm; struct vm_area_struct* mmap; } ;
struct list_head {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 size_t PAGE_ALIGN (size_t) ;
 unsigned long TASK_SIZE ;
 int VM_LOCKED ;
 int __split_vma (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ;
 int arch_unmap (struct mm_struct*,unsigned long,unsigned long) ;
 int detach_vmas_to_be_unmapped (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,unsigned long) ;
 int downgrade_write (int *) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int munlock_vma_pages_all (struct vm_area_struct*) ;
 scalar_t__ offset_in_page (unsigned long) ;
 int remove_vma_list (struct mm_struct*,struct vm_area_struct*) ;
 scalar_t__ sysctl_max_map_count ;
 scalar_t__ unlikely (struct list_head*) ;
 int unmap_region (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,unsigned long,unsigned long) ;
 int userfaultfd_unmap_prep (struct vm_area_struct*,unsigned long,unsigned long,struct list_head*) ;
 scalar_t__ vma_pages (struct vm_area_struct*) ;

int __do_munmap(struct mm_struct *mm, unsigned long start, size_t len,
  struct list_head *uf, bool downgrade)
{
 unsigned long end;
 struct vm_area_struct *vma, *prev, *last;

 if ((offset_in_page(start)) || start > TASK_SIZE || len > TASK_SIZE-start)
  return -EINVAL;

 len = PAGE_ALIGN(len);
 end = start + len;
 if (len == 0)
  return -EINVAL;






 arch_unmap(mm, start, end);


 vma = find_vma(mm, start);
 if (!vma)
  return 0;
 prev = vma->vm_prev;



 if (vma->vm_start >= end)
  return 0;
 if (start > vma->vm_start) {
  int error;






  if (end < vma->vm_end && mm->map_count >= sysctl_max_map_count)
   return -ENOMEM;

  error = __split_vma(mm, vma, start, 0);
  if (error)
   return error;
  prev = vma;
 }


 last = find_vma(mm, end);
 if (last && end > last->vm_start) {
  int error = __split_vma(mm, last, end, 1);
  if (error)
   return error;
 }
 vma = prev ? prev->vm_next : mm->mmap;

 if (unlikely(uf)) {
  int error = userfaultfd_unmap_prep(vma, start, end, uf);
  if (error)
   return error;
 }




 if (mm->locked_vm) {
  struct vm_area_struct *tmp = vma;
  while (tmp && tmp->vm_start < end) {
   if (tmp->vm_flags & VM_LOCKED) {
    mm->locked_vm -= vma_pages(tmp);
    munlock_vma_pages_all(tmp);
   }

   tmp = tmp->vm_next;
  }
 }


 detach_vmas_to_be_unmapped(mm, vma, prev, end);

 if (downgrade)
  downgrade_write(&mm->mmap_sem);

 unmap_region(mm, vma, prev, start, end);


 remove_vma_list(mm, vma);

 return downgrade ? 1 : 0;
}
