
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_page_prot; } ;
typedef unsigned long phys_addr_t ;


 int EINVAL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int io_remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;

int vm_iomap_memory(struct vm_area_struct *vma, phys_addr_t start, unsigned long len)
{
 unsigned long vm_len, pfn, pages;


 if (start + len < start)
  return -EINVAL;





 len += start & ~PAGE_MASK;
 pfn = start >> PAGE_SHIFT;
 pages = (len + ~PAGE_MASK) >> PAGE_SHIFT;
 if (pfn + pages < pfn)
  return -EINVAL;


 if (vma->vm_pgoff > pages)
  return -EINVAL;
 pfn += vma->vm_pgoff;
 pages -= vma->vm_pgoff;


 vm_len = vma->vm_end - vma->vm_start;
 if (vm_len >> PAGE_SHIFT > pages)
  return -EINVAL;


 return io_remap_pfn_range(vma, vma->vm_start, pfn, vm_len, vma->vm_page_prot);
}
