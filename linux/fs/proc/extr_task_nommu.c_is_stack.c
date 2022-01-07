
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__ start_stack; } ;



__attribute__((used)) static int is_stack(struct vm_area_struct *vma)
{
 struct mm_struct *mm = vma->vm_mm;






 return vma->vm_start <= mm->start_stack &&
  vma->vm_end >= mm->start_stack;
}
