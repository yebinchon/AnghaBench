
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long const vm_flags; int vm_mm; int vm_end; } ;
struct hmm_vma_walk {unsigned long last; unsigned int flags; struct hmm_range* range; int * pgmap; } ;
struct hmm_range {unsigned long start; unsigned long end; int * pfns; scalar_t__ valid; struct hmm* hmm; } ;
struct TYPE_3__ {TYPE_2__* mm; } ;
struct hmm {TYPE_1__ mmu_notifier; } ;
struct TYPE_4__ {int mmap_sem; } ;


 long EBUSY ;
 long EFAULT ;
 long EPERM ;
 long PAGE_SHIFT ;
 unsigned long VM_IO ;
 unsigned long VM_MIXEDMAP ;
 unsigned long VM_PFNMAP ;
 int VM_READ ;
 struct vm_area_struct* find_vma (TYPE_2__*,unsigned long) ;
 int hmm_pfns_clear (struct hmm_range*,int *,unsigned long,unsigned long) ;
 int hmm_walk_ops ;
 int lockdep_assert_held (int *) ;
 unsigned long min (unsigned long,int ) ;
 int walk_page_range (int ,unsigned long,unsigned long,int *,struct hmm_vma_walk*) ;

long hmm_range_fault(struct hmm_range *range, unsigned int flags)
{
 const unsigned long device_vma = VM_IO | VM_PFNMAP | VM_MIXEDMAP;
 unsigned long start = range->start, end;
 struct hmm_vma_walk hmm_vma_walk;
 struct hmm *hmm = range->hmm;
 struct vm_area_struct *vma;
 int ret;

 lockdep_assert_held(&hmm->mmu_notifier.mm->mmap_sem);

 do {

  if (!range->valid)
   return -EBUSY;

  vma = find_vma(hmm->mmu_notifier.mm, start);
  if (vma == ((void*)0) || (vma->vm_flags & device_vma))
   return -EFAULT;

  if (!(vma->vm_flags & VM_READ)) {





   hmm_pfns_clear(range, range->pfns,
    range->start, range->end);
   return -EPERM;
  }

  hmm_vma_walk.pgmap = ((void*)0);
  hmm_vma_walk.last = start;
  hmm_vma_walk.flags = flags;
  hmm_vma_walk.range = range;
  end = min(range->end, vma->vm_end);

  walk_page_range(vma->vm_mm, start, end, &hmm_walk_ops,
    &hmm_vma_walk);

  do {
   ret = walk_page_range(vma->vm_mm, start, end,
     &hmm_walk_ops, &hmm_vma_walk);
   start = hmm_vma_walk.last;


  } while (ret == -EBUSY && range->valid);

  if (ret) {
   unsigned long i;

   i = (hmm_vma_walk.last - range->start) >> PAGE_SHIFT;
   hmm_pfns_clear(range, &range->pfns[i],
    hmm_vma_walk.last, range->end);
   return ret;
  }
  start = end;

 } while (start < range->end);

 return (hmm_vma_walk.last - range->start) >> PAGE_SHIFT;
}
