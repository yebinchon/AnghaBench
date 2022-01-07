
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zap_details {int dummy; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; TYPE_1__* vm_file; } ;
struct mmu_gather {int dummy; } ;
struct TYPE_2__ {int f_mapping; } ;


 int VM_PFNMAP ;
 int __unmap_hugepage_range_final (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,int *) ;
 int i_mmap_lock_write (int ) ;
 int i_mmap_unlock_write (int ) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int unmap_page_range (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,struct zap_details*) ;
 int untrack_pfn (struct vm_area_struct*,int ,int ) ;
 int uprobe_munmap (struct vm_area_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static void unmap_single_vma(struct mmu_gather *tlb,
  struct vm_area_struct *vma, unsigned long start_addr,
  unsigned long end_addr,
  struct zap_details *details)
{
 unsigned long start = max(vma->vm_start, start_addr);
 unsigned long end;

 if (start >= vma->vm_end)
  return;
 end = min(vma->vm_end, end_addr);
 if (end <= vma->vm_start)
  return;

 if (vma->vm_file)
  uprobe_munmap(vma, start, end);

 if (unlikely(vma->vm_flags & VM_PFNMAP))
  untrack_pfn(vma, 0, 0);

 if (start != end) {
  if (unlikely(is_vm_hugetlb_page(vma))) {
   if (vma->vm_file) {
    i_mmap_lock_write(vma->vm_file->f_mapping);
    __unmap_hugepage_range_final(tlb, vma, start, end, ((void*)0));
    i_mmap_unlock_write(vma->vm_file->f_mapping);
   }
  } else
   unmap_page_range(tlb, vma, start, end, details);
 }
}
