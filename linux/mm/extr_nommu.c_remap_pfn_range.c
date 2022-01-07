
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
typedef int pgprot_t ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_PFNMAP ;

int remap_pfn_range(struct vm_area_struct *vma, unsigned long addr,
  unsigned long pfn, unsigned long size, pgprot_t prot)
{
 if (addr != (pfn << PAGE_SHIFT))
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
 return 0;
}
