
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_flags_t ;
struct vm_area_struct {int vm_flags; int vm_end; int vm_start; struct vm_area_struct* vm_next; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int def_flags; struct vm_area_struct* mmap; } ;


 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int MCL_ONFAULT ;
 int VM_LOCKED ;
 int VM_LOCKED_CLEAR_MASK ;
 int VM_LOCKONFAULT ;
 int cond_resched () ;
 TYPE_2__* current ;
 int mlock_fixup (struct vm_area_struct*,struct vm_area_struct**,int ,int ,int) ;

__attribute__((used)) static int apply_mlockall_flags(int flags)
{
 struct vm_area_struct * vma, * prev = ((void*)0);
 vm_flags_t to_add = 0;

 current->mm->def_flags &= VM_LOCKED_CLEAR_MASK;
 if (flags & MCL_FUTURE) {
  current->mm->def_flags |= VM_LOCKED;

  if (flags & MCL_ONFAULT)
   current->mm->def_flags |= VM_LOCKONFAULT;

  if (!(flags & MCL_CURRENT))
   goto out;
 }

 if (flags & MCL_CURRENT) {
  to_add |= VM_LOCKED;
  if (flags & MCL_ONFAULT)
   to_add |= VM_LOCKONFAULT;
 }

 for (vma = current->mm->mmap; vma ; vma = prev->vm_next) {
  vm_flags_t newflags;

  newflags = vma->vm_flags & VM_LOCKED_CLEAR_MASK;
  newflags |= to_add;


  mlock_fixup(vma, &prev, vma->vm_start, vma->vm_end, newflags);
  cond_resched();
 }
out:
 return 0;
}
