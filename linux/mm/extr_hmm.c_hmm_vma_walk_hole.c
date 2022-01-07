
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mm_walk {struct hmm_vma_walk* private; } ;
struct hmm_vma_walk {struct hmm_range* range; } ;
struct hmm_range {unsigned long start; int * pfns; } ;


 unsigned long PAGE_SHIFT ;
 int hmm_range_need_fault (struct hmm_vma_walk*,int *,unsigned long,int ,int*,int*) ;
 int hmm_vma_walk_hole_ (unsigned long,unsigned long,int,int,struct mm_walk*) ;

__attribute__((used)) static int hmm_vma_walk_hole(unsigned long addr, unsigned long end,
        struct mm_walk *walk)
{
 struct hmm_vma_walk *hmm_vma_walk = walk->private;
 struct hmm_range *range = hmm_vma_walk->range;
 bool fault, write_fault;
 unsigned long i, npages;
 uint64_t *pfns;

 i = (addr - range->start) >> PAGE_SHIFT;
 npages = (end - addr) >> PAGE_SHIFT;
 pfns = &range->pfns[i];
 hmm_range_need_fault(hmm_vma_walk, pfns, npages,
        0, &fault, &write_fault);
 return hmm_vma_walk_hole_(addr, end, fault, write_fault, walk);
}
