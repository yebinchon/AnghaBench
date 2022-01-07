
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_pgoff; unsigned long vm_end; } ;
typedef unsigned long pgoff_t ;


 unsigned long PAGE_SHIFT ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;

__attribute__((used)) static inline
unsigned long pgoff_address(pgoff_t pgoff, struct vm_area_struct *vma)
{
 unsigned long address;

 address = vma->vm_start + ((pgoff - vma->vm_pgoff) << PAGE_SHIFT);
 VM_BUG_ON_VMA(address < vma->vm_start || address >= vma->vm_end, vma);
 return address;
}
