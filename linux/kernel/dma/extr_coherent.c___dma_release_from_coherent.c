
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {void* virt_base; int size; int spinlock; int bitmap; } ;


 int PAGE_SHIFT ;
 int bitmap_release_region (int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __dma_release_from_coherent(struct dma_coherent_mem *mem,
           int order, void *vaddr)
{
 if (mem && vaddr >= mem->virt_base && vaddr <
     (mem->virt_base + (mem->size << PAGE_SHIFT))) {
  int page = (vaddr - mem->virt_base) >> PAGE_SHIFT;
  unsigned long flags;

  spin_lock_irqsave(&mem->spinlock, flags);
  bitmap_release_region(mem->bitmap, page, order);
  spin_unlock_irqrestore(&mem->spinlock, flags);
  return 1;
 }
 return 0;
}
