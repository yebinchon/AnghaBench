
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max; scalar_t__ nr; int * next; } ;
struct mmu_gather {int fullmm; struct mm_struct* mm; scalar_t__ page_size; int * batch; scalar_t__ batch_count; TYPE_1__ local; TYPE_1__* active; int __pages; scalar_t__ need_flush_all; } ;
struct mm_struct {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int __tlb_reset_range (struct mmu_gather*) ;
 int inc_tlb_flush_pending (struct mm_struct*) ;

void tlb_gather_mmu(struct mmu_gather *tlb, struct mm_struct *mm,
   unsigned long start, unsigned long end)
{
 tlb->mm = mm;


 tlb->fullmm = !(start | (end+1));


 tlb->need_flush_all = 0;
 tlb->local.next = ((void*)0);
 tlb->local.nr = 0;
 tlb->local.max = ARRAY_SIZE(tlb->__pages);
 tlb->active = &tlb->local;
 tlb->batch_count = 0;
 __tlb_reset_range(tlb);
 inc_tlb_flush_pending(tlb->mm);
}
