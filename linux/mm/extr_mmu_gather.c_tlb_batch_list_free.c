
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_gather_batch {struct mmu_gather_batch* next; } ;
struct TYPE_2__ {struct mmu_gather_batch* next; } ;
struct mmu_gather {TYPE_1__ local; } ;


 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void tlb_batch_list_free(struct mmu_gather *tlb)
{
 struct mmu_gather_batch *batch, *next;

 for (batch = tlb->local.next; batch; batch = next) {
  next = batch->next;
  free_pages((unsigned long)batch, 0);
 }
 tlb->local.next = ((void*)0);
}
