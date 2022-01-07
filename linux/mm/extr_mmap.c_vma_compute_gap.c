
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_prev; } ;


 unsigned long vm_end_gap (scalar_t__) ;
 unsigned long vm_start_gap (struct vm_area_struct*) ;

__attribute__((used)) static inline unsigned long vma_compute_gap(struct vm_area_struct *vma)
{
 unsigned long gap, prev_end;







 gap = vm_start_gap(vma);
 if (vma->vm_prev) {
  prev_end = vm_end_gap(vma->vm_prev);
  if (gap > prev_end)
   gap -= prev_end;
  else
   gap = 0;
 }
 return gap;
}
