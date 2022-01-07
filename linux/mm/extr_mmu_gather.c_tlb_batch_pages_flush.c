
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather_batch {scalar_t__ nr; int pages; struct mmu_gather_batch* next; } ;
struct mmu_gather {struct mmu_gather_batch local; struct mmu_gather_batch* active; } ;


 int free_pages_and_swap_cache (int ,scalar_t__) ;

__attribute__((used)) static void tlb_batch_pages_flush(struct mmu_gather *tlb)
{
 struct mmu_gather_batch *batch;

 for (batch = &tlb->local; batch && batch->nr; batch = batch->next) {
  free_pages_and_swap_cache(batch->pages, batch->nr);
  batch->nr = 0;
 }
 tlb->active = &tlb->local;
}
