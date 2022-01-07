
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 int EINVAL ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_PFNMAP ;
 int flush_cache_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 scalar_t__ is_cow_mapping (int) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int remap_p4d_range (struct mm_struct*,int *,unsigned long,unsigned long,unsigned long,int ) ;
 int track_pfn_remap (struct vm_area_struct*,int *,unsigned long,unsigned long,unsigned long) ;
 int untrack_pfn (struct vm_area_struct*,unsigned long,unsigned long) ;

int remap_pfn_range(struct vm_area_struct *vma, unsigned long addr,
      unsigned long pfn, unsigned long size, pgprot_t prot)
{
 pgd_t *pgd;
 unsigned long next;
 unsigned long end = addr + PAGE_ALIGN(size);
 struct mm_struct *mm = vma->vm_mm;
 unsigned long remap_pfn = pfn;
 int err;
 if (is_cow_mapping(vma->vm_flags)) {
  if (addr != vma->vm_start || end != vma->vm_end)
   return -EINVAL;
  vma->vm_pgoff = pfn;
 }

 err = track_pfn_remap(vma, &prot, remap_pfn, addr, PAGE_ALIGN(size));
 if (err)
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;

 BUG_ON(addr >= end);
 pfn -= addr >> PAGE_SHIFT;
 pgd = pgd_offset(mm, addr);
 flush_cache_range(vma, addr, end);
 do {
  next = pgd_addr_end(addr, end);
  err = remap_p4d_range(mm, pgd, addr, next,
    pfn + (addr >> PAGE_SHIFT), prot);
  if (err)
   break;
 } while (pgd++, addr = next, addr != end);

 if (err)
  untrack_pfn(vma, remap_pfn, PAGE_ALIGN(size));

 return err;
}
