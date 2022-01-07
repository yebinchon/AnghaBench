
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;


 unsigned long PAGE_SHIFT ;
 int remap_vmalloc_range_partial (struct vm_area_struct*,scalar_t__,void*,scalar_t__) ;

int remap_vmalloc_range(struct vm_area_struct *vma, void *addr,
      unsigned long pgoff)
{
 return remap_vmalloc_range_partial(vma, vma->vm_start,
        addr + (pgoff << PAGE_SHIFT),
        vma->vm_end - vma->vm_start);
}
