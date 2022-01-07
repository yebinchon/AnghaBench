
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_pgoff; } ;
typedef unsigned long loff_t ;


 unsigned long PAGE_SHIFT ;

__attribute__((used)) static unsigned long offset_to_vaddr(struct vm_area_struct *vma, loff_t offset)
{
 return vma->vm_start + offset - ((loff_t)vma->vm_pgoff << PAGE_SHIFT);
}
