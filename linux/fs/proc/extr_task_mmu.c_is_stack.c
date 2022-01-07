
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; TYPE_1__* vm_mm; } ;
struct TYPE_2__ {scalar_t__ start_stack; } ;



__attribute__((used)) static int is_stack(struct vm_area_struct *vma)
{





 return vma->vm_start <= vma->vm_mm->start_stack &&
  vma->vm_end >= vma->vm_mm->start_stack;
}
