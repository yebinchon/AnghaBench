
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct mm_walk_ops {scalar_t__ pte_hole; } ;
struct mm_walk {void* private; struct mm_walk_ops const* ops; struct vm_area_struct* vma; struct mm_struct* mm; } ;
struct mm_struct {int mmap_sem; } ;


 int EINVAL ;
 int __walk_page_range (unsigned long,unsigned long,struct mm_walk*) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int lockdep_assert_held (int *) ;
 unsigned long min (unsigned long,unsigned long) ;
 int walk_page_test (unsigned long,unsigned long,struct mm_walk*) ;

int walk_page_range(struct mm_struct *mm, unsigned long start,
  unsigned long end, const struct mm_walk_ops *ops,
  void *private)
{
 int err = 0;
 unsigned long next;
 struct vm_area_struct *vma;
 struct mm_walk walk = {
  .ops = ops,
  .mm = mm,
  .private = private,
 };

 if (start >= end)
  return -EINVAL;

 if (!walk.mm)
  return -EINVAL;

 lockdep_assert_held(&walk.mm->mmap_sem);

 vma = find_vma(walk.mm, start);
 do {
  if (!vma) {
   walk.vma = ((void*)0);
   next = end;
  } else if (start < vma->vm_start) {
   walk.vma = ((void*)0);
   next = min(end, vma->vm_start);
  } else {
   walk.vma = vma;
   next = min(end, vma->vm_end);
   vma = vma->vm_next;

   err = walk_page_test(start, next, &walk);
   if (err > 0) {





    err = 0;
    continue;
   }
   if (err < 0)
    break;
  }
  if (walk.vma || walk.ops->pte_hole)
   err = __walk_page_range(start, next, &walk);
  if (err)
   break;
 } while (start = next, start < end);
 return err;
}
