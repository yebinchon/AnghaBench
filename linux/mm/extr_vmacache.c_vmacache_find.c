
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
struct TYPE_3__ {struct vm_area_struct** vmas; } ;
struct TYPE_4__ {TYPE_1__ vmacache; } ;


 int VMACACHE_FIND_CALLS ;
 int VMACACHE_FIND_HITS ;
 int VMACACHE_HASH (unsigned long) ;
 int VMACACHE_SIZE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int count_vm_vmacache_event (int ) ;
 TYPE_2__* current ;
 int vmacache_valid (struct mm_struct*) ;

struct vm_area_struct *vmacache_find(struct mm_struct *mm, unsigned long addr)
{
 int idx = VMACACHE_HASH(addr);
 int i;

 count_vm_vmacache_event(VMACACHE_FIND_CALLS);

 if (!vmacache_valid(mm))
  return ((void*)0);

 for (i = 0; i < VMACACHE_SIZE; i++) {
  struct vm_area_struct *vma = current->vmacache.vmas[idx];

  if (vma) {




   if (vma->vm_start <= addr && vma->vm_end > addr) {
    count_vm_vmacache_event(VMACACHE_FIND_HITS);
    return vma;
   }
  }
  if (++idx == VMACACHE_SIZE)
   idx = 0;
 }

 return ((void*)0);
}
