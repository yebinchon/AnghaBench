
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; struct mm_struct* vm_mm; } ;
struct mm_struct {unsigned long locked_vm; } ;


 int CAP_IPC_LOCK ;
 int EFAULT ;
 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int RLIMIT_MEMLOCK ;
 int RLIMIT_STACK ;
 int VM_GROWSUP ;
 int VM_LOCKED ;
 int capable (int ) ;
 scalar_t__ is_hugepage_only_range (struct mm_struct*,unsigned long,unsigned long) ;
 int may_expand_vm (struct mm_struct*,int,unsigned long) ;
 unsigned long rlimit (int ) ;
 scalar_t__ security_vm_enough_memory_mm (struct mm_struct*,unsigned long) ;

__attribute__((used)) static int acct_stack_growth(struct vm_area_struct *vma,
        unsigned long size, unsigned long grow)
{
 struct mm_struct *mm = vma->vm_mm;
 unsigned long new_start;


 if (!may_expand_vm(mm, vma->vm_flags, grow))
  return -ENOMEM;


 if (size > rlimit(RLIMIT_STACK))
  return -ENOMEM;


 if (vma->vm_flags & VM_LOCKED) {
  unsigned long locked;
  unsigned long limit;
  locked = mm->locked_vm + grow;
  limit = rlimit(RLIMIT_MEMLOCK);
  limit >>= PAGE_SHIFT;
  if (locked > limit && !capable(CAP_IPC_LOCK))
   return -ENOMEM;
 }


 new_start = (vma->vm_flags & VM_GROWSUP) ? vma->vm_start :
   vma->vm_end - size;
 if (is_hugepage_only_range(vma->vm_mm, new_start, size))
  return -EFAULT;





 if (security_vm_enough_memory_mm(mm, grow))
  return -ENOMEM;

 return 0;
}
