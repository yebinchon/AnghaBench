
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct mmu_gather {int dummy; } ;
struct madvise_walk_private {int pageout; struct mmu_gather* tlb; } ;


 int cold_walk_ops ;
 int tlb_end_vma (struct mmu_gather*,struct vm_area_struct*) ;
 int tlb_start_vma (struct mmu_gather*,struct vm_area_struct*) ;
 int walk_page_range (int ,unsigned long,unsigned long,int *,struct madvise_walk_private*) ;

__attribute__((used)) static void madvise_pageout_page_range(struct mmu_gather *tlb,
        struct vm_area_struct *vma,
        unsigned long addr, unsigned long end)
{
 struct madvise_walk_private walk_private = {
  .pageout = 1,
  .tlb = tlb,
 };

 tlb_start_vma(tlb, vma);
 walk_page_range(vma->vm_mm, addr, end, &cold_walk_ops, &walk_private);
 tlb_end_vma(tlb, vma);
}
