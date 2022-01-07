
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;


 int __unmap_hugepage_range (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,struct page*) ;
 int adjust_range_if_pmd_sharing_possible (struct vm_area_struct*,unsigned long*,unsigned long*) ;
 int tlb_finish_mmu (struct mmu_gather*,unsigned long,unsigned long) ;
 int tlb_gather_mmu (struct mmu_gather*,struct mm_struct*,unsigned long,unsigned long) ;

void unmap_hugepage_range(struct vm_area_struct *vma, unsigned long start,
     unsigned long end, struct page *ref_page)
{
 struct mm_struct *mm;
 struct mmu_gather tlb;
 unsigned long tlb_start = start;
 unsigned long tlb_end = end;
 adjust_range_if_pmd_sharing_possible(vma, &tlb_start, &tlb_end);

 mm = vma->vm_mm;

 tlb_gather_mmu(&tlb, mm, tlb_start, tlb_end);
 __unmap_hugepage_range(&tlb, vma, start, end, ref_page);
 tlb_finish_mmu(&tlb, tlb_start, tlb_end);
}
