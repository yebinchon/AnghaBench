
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; } ;


 int VM_PFNMAP ;
 int zap_page_range_single (struct vm_area_struct*,unsigned long,unsigned long,int *) ;

void zap_vma_ptes(struct vm_area_struct *vma, unsigned long address,
  unsigned long size)
{
 if (address < vma->vm_start || address + size > vma->vm_end ||
       !(vma->vm_flags & VM_PFNMAP))
  return;

 zap_page_range_single(vma, address, size, ((void*)0));
}
