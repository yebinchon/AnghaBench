
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {int size; int spinlock; void* virt_base; scalar_t__ device_base; int bitmap; } ;
typedef int ssize_t ;
typedef scalar_t__ dma_addr_t ;


 int PAGE_SHIFT ;
 int bitmap_find_free_region (int ,int,int) ;
 int get_order (int) ;
 int memset (void*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
  ssize_t size, dma_addr_t *dma_handle)
{
 int order = get_order(size);
 unsigned long flags;
 int pageno;
 void *ret;

 spin_lock_irqsave(&mem->spinlock, flags);

 if (unlikely(size > (mem->size << PAGE_SHIFT)))
  goto err;

 pageno = bitmap_find_free_region(mem->bitmap, mem->size, order);
 if (unlikely(pageno < 0))
  goto err;




 *dma_handle = mem->device_base + (pageno << PAGE_SHIFT);
 ret = mem->virt_base + (pageno << PAGE_SHIFT);
 spin_unlock_irqrestore(&mem->spinlock, flags);
 memset(ret, 0, size);
 return ret;
err:
 spin_unlock_irqrestore(&mem->spinlock, flags);
 return ((void*)0);
}
