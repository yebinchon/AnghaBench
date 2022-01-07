
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mmu_gather_batch {scalar_t__ nr; scalar_t__ max; struct page** pages; } ;
struct mmu_gather {int page_size; struct mmu_gather_batch* active; int end; } ;


 int VM_BUG_ON (int) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_WARN_ON (int) ;
 int tlb_next_batch (struct mmu_gather*) ;

bool __tlb_remove_page_size(struct mmu_gather *tlb, struct page *page, int page_size)
{
 struct mmu_gather_batch *batch;

 VM_BUG_ON(!tlb->end);





 batch = tlb->active;




 batch->pages[batch->nr++] = page;
 if (batch->nr == batch->max) {
  if (!tlb_next_batch(tlb))
   return 1;
  batch = tlb->active;
 }
 VM_BUG_ON_PAGE(batch->nr > batch->max, page);

 return 0;
}
