
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mm_walk {TYPE_1__* vma; struct hmm_vma_walk* private; } ;
struct hmm_vma_walk {unsigned long last; struct hmm_range* range; } ;
struct hmm_range {unsigned long start; int * values; int * pfns; } ;
struct TYPE_2__ {int vm_flags; } ;


 int EBUSY ;
 int EPERM ;
 size_t HMM_PFN_NONE ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_WRITE ;
 int hmm_vma_do_fault (struct mm_walk*,unsigned long,int,int *) ;

__attribute__((used)) static int hmm_vma_walk_hole_(unsigned long addr, unsigned long end,
         bool fault, bool write_fault,
         struct mm_walk *walk)
{
 struct hmm_vma_walk *hmm_vma_walk = walk->private;
 struct hmm_range *range = hmm_vma_walk->range;
 uint64_t *pfns = range->pfns;
 unsigned long i;

 hmm_vma_walk->last = addr;
 i = (addr - range->start) >> PAGE_SHIFT;

 if (write_fault && walk->vma && !(walk->vma->vm_flags & VM_WRITE))
  return -EPERM;

 for (; addr < end; addr += PAGE_SIZE, i++) {
  pfns[i] = range->values[HMM_PFN_NONE];
  if (fault || write_fault) {
   int ret;

   ret = hmm_vma_do_fault(walk, addr, write_fault,
            &pfns[i]);
   if (ret != -EBUSY)
    return ret;
  }
 }

 return (fault || write_fault) ? -EBUSY : 0;
}
