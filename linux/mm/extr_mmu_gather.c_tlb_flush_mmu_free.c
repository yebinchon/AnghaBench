
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;


 int tlb_batch_pages_flush (struct mmu_gather*) ;
 int tlb_table_flush (struct mmu_gather*) ;

__attribute__((used)) static void tlb_flush_mmu_free(struct mmu_gather *tlb)
{




 tlb_batch_pages_flush(tlb);

}
