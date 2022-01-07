
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather_batch {struct mmu_gather_batch* next; int max; scalar_t__ nr; } ;
struct mmu_gather {scalar_t__ batch_count; struct mmu_gather_batch* active; } ;


 int GFP_NOWAIT ;
 int MAX_GATHER_BATCH ;
 scalar_t__ MAX_GATHER_BATCH_COUNT ;
 int __GFP_NOWARN ;
 scalar_t__ __get_free_pages (int,int ) ;

__attribute__((used)) static bool tlb_next_batch(struct mmu_gather *tlb)
{
 struct mmu_gather_batch *batch;

 batch = tlb->active;
 if (batch->next) {
  tlb->active = batch->next;
  return 1;
 }

 if (tlb->batch_count == MAX_GATHER_BATCH_COUNT)
  return 0;

 batch = (void *)__get_free_pages(GFP_NOWAIT | __GFP_NOWARN, 0);
 if (!batch)
  return 0;

 tlb->batch_count++;
 batch->next = ((void*)0);
 batch->nr = 0;
 batch->max = MAX_GATHER_BATCH;

 tlb->active->next = batch;
 tlb->active = batch;

 return 1;
}
