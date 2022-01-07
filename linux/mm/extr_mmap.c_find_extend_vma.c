
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct mm_struct {int dummy; } ;


 unsigned long PAGE_MASK ;
 int VM_GROWSDOWN ;
 int VM_LOCKED ;
 scalar_t__ expand_stack (struct vm_area_struct*,unsigned long) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int mmget_still_valid (struct mm_struct*) ;
 int populate_vma_page_range (struct vm_area_struct*,unsigned long,unsigned long,int *) ;

struct vm_area_struct *
find_extend_vma(struct mm_struct *mm, unsigned long addr)
{
 struct vm_area_struct *vma;
 unsigned long start;

 addr &= PAGE_MASK;
 vma = find_vma(mm, addr);
 if (!vma)
  return ((void*)0);
 if (vma->vm_start <= addr)
  return vma;
 if (!(vma->vm_flags & VM_GROWSDOWN))
  return ((void*)0);

 if (!mmget_still_valid(mm))
  return ((void*)0);
 start = vma->vm_start;
 if (expand_stack(vma, addr))
  return ((void*)0);
 if (vma->vm_flags & VM_LOCKED)
  populate_vma_page_range(vma, addr, start, ((void*)0));
 return vma;
}
