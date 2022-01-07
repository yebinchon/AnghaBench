
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 long EINVAL ;
 long ENOMEM ;
 int MADV_DONTNEED ;
 int MADV_FREE ;
 int VM_WARN_ON (int) ;
 int can_madv_lru_vma (struct vm_area_struct*) ;
 TYPE_2__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (TYPE_1__*,unsigned long) ;
 long madvise_dontneed_single_vma (struct vm_area_struct*,unsigned long,unsigned long) ;
 long madvise_free_single_vma (struct vm_area_struct*,unsigned long,unsigned long) ;
 int userfaultfd_remove (struct vm_area_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static long madvise_dontneed_free(struct vm_area_struct *vma,
      struct vm_area_struct **prev,
      unsigned long start, unsigned long end,
      int behavior)
{
 *prev = vma;
 if (!can_madv_lru_vma(vma))
  return -EINVAL;

 if (!userfaultfd_remove(vma, start, end)) {
  *prev = ((void*)0);

  down_read(&current->mm->mmap_sem);
  vma = find_vma(current->mm, start);
  if (!vma)
   return -ENOMEM;
  if (start < vma->vm_start) {
   return -ENOMEM;
  }
  if (!can_madv_lru_vma(vma))
   return -EINVAL;
  if (end > vma->vm_end) {
   end = vma->vm_end;
  }
  VM_WARN_ON(start >= end);
 }

 if (behavior == MADV_DONTNEED)
  return madvise_dontneed_single_vma(vma, start, end);
 else if (behavior == MADV_FREE)
  return madvise_free_single_vma(vma, start, end);
 else
  return -EINVAL;
}
