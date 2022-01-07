
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_GROWSDOWN ;
 int VM_GROWSUP ;
 int VM_STACK_INCOMPLETE_SETUP ;

bool is_vma_temporary_stack(struct vm_area_struct *vma)
{
 int maybe_stack = vma->vm_flags & (VM_GROWSDOWN | VM_GROWSUP);

 if (!maybe_stack)
  return 0;

 if ((vma->vm_flags & VM_STACK_INCOMPLETE_SETUP) ==
      VM_STACK_INCOMPLETE_SETUP)
  return 1;

 return 0;
}
