
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; scalar_t__ vm_start; TYPE_1__* vm_next; } ;
struct TYPE_2__ {unsigned long vm_start; } ;


 int MAP_FIXED ;
 int PAGE_MASK ;
 int get_unmapped_area (int *,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static int vma_expandable(struct vm_area_struct *vma, unsigned long delta)
{
 unsigned long end = vma->vm_end + delta;
 if (end < vma->vm_end)
  return 0;
 if (vma->vm_next && vma->vm_next->vm_start < end)
  return 0;
 if (get_unmapped_area(((void*)0), vma->vm_start, end - vma->vm_start,
         0, MAP_FIXED) & ~PAGE_MASK)
  return 0;
 return 1;
}
