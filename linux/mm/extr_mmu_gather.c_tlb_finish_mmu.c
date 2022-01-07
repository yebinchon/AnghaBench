
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int fullmm; int freed_tables; int mm; } ;


 int __tlb_reset_range (struct mmu_gather*) ;
 int dec_tlb_flush_pending (int ) ;
 scalar_t__ mm_tlb_flush_nested (int ) ;
 int tlb_batch_list_free (struct mmu_gather*) ;
 int tlb_flush_mmu (struct mmu_gather*) ;

void tlb_finish_mmu(struct mmu_gather *tlb,
  unsigned long start, unsigned long end)
{
 if (mm_tlb_flush_nested(tlb->mm)) {
  tlb->fullmm = 1;
  __tlb_reset_range(tlb);
  tlb->freed_tables = 1;
 }

 tlb_flush_mmu(tlb);


 tlb_batch_list_free(tlb);

 dec_tlb_flush_pending(tlb->mm);
}
