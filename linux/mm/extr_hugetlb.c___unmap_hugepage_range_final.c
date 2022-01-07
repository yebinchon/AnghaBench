
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
struct mmu_gather {int dummy; } ;


 int VM_MAYSHARE ;
 int __unmap_hugepage_range (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,struct page*) ;

void __unmap_hugepage_range_final(struct mmu_gather *tlb,
     struct vm_area_struct *vma, unsigned long start,
     unsigned long end, struct page *ref_page)
{
 __unmap_hugepage_range(tlb, vma, start, end, ref_page);
 vma->vm_flags &= ~VM_MAYSHARE;
}
