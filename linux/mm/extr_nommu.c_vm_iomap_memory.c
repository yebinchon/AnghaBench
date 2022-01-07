
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_page_prot; scalar_t__ vm_pgoff; } ;
typedef unsigned long phys_addr_t ;


 unsigned long PAGE_SHIFT ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;

int vm_iomap_memory(struct vm_area_struct *vma, phys_addr_t start, unsigned long len)
{
 unsigned long pfn = start >> PAGE_SHIFT;
 unsigned long vm_len = vma->vm_end - vma->vm_start;

 pfn += vma->vm_pgoff;
 return io_remap_pfn_range(vma, vma->vm_start, pfn, vm_len, vma->vm_page_prot);
}
