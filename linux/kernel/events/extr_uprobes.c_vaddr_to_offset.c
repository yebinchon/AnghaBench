
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_pgoff; } ;
typedef unsigned long loff_t ;


 unsigned long PAGE_SHIFT ;

__attribute__((used)) static loff_t vaddr_to_offset(struct vm_area_struct *vma, unsigned long vaddr)
{
 return ((loff_t)vma->vm_pgoff << PAGE_SHIFT) + (vaddr - vma->vm_start);
}
