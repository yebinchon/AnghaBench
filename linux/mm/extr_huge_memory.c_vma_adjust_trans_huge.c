
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; struct vm_area_struct* vm_next; } ;


 unsigned long HPAGE_PMD_MASK ;
 scalar_t__ HPAGE_PMD_SIZE ;
 long PAGE_SHIFT ;
 int split_huge_pmd_address (struct vm_area_struct*,unsigned long,int,int *) ;

void vma_adjust_trans_huge(struct vm_area_struct *vma,
        unsigned long start,
        unsigned long end,
        long adjust_next)
{





 if (start & ~HPAGE_PMD_MASK &&
     (start & HPAGE_PMD_MASK) >= vma->vm_start &&
     (start & HPAGE_PMD_MASK) + HPAGE_PMD_SIZE <= vma->vm_end)
  split_huge_pmd_address(vma, start, 0, ((void*)0));






 if (end & ~HPAGE_PMD_MASK &&
     (end & HPAGE_PMD_MASK) >= vma->vm_start &&
     (end & HPAGE_PMD_MASK) + HPAGE_PMD_SIZE <= vma->vm_end)
  split_huge_pmd_address(vma, end, 0, ((void*)0));






 if (adjust_next > 0) {
  struct vm_area_struct *next = vma->vm_next;
  unsigned long nstart = next->vm_start;
  nstart += adjust_next << PAGE_SHIFT;
  if (nstart & ~HPAGE_PMD_MASK &&
      (nstart & HPAGE_PMD_MASK) >= next->vm_start &&
      (nstart & HPAGE_PMD_MASK) + HPAGE_PMD_SIZE <= next->vm_end)
   split_huge_pmd_address(next, nstart, 0, ((void*)0));
 }
}
