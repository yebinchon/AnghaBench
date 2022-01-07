
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;


 int tlb_flush_mmu_free (struct mmu_gather*) ;
 int tlb_flush_mmu_tlbonly (struct mmu_gather*) ;

void tlb_flush_mmu(struct mmu_gather *tlb)
{
 tlb_flush_mmu_tlbonly(tlb);
 tlb_flush_mmu_free(tlb);
}
