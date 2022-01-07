
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {unsigned int allocation; int lock; int size; int name; scalar_t__ dev; } ;
struct dma_page {void* vaddr; unsigned int dma; unsigned int offset; int in_use; } ;
typedef unsigned int dma_addr_t ;


 int POOL_POISON_FREED ;
 int dev_err (scalar_t__,char*,int ,unsigned int*,...) ;
 int memset (void*,int ,int ) ;
 struct dma_page* pool_find_page (struct dma_pool*,unsigned int) ;
 int pr_err (char*,int ,unsigned int*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ want_init_on_free () ;

void dma_pool_free(struct dma_pool *pool, void *vaddr, dma_addr_t dma)
{
 struct dma_page *page;
 unsigned long flags;
 unsigned int offset;

 spin_lock_irqsave(&pool->lock, flags);
 page = pool_find_page(pool, dma);
 if (!page) {
  spin_unlock_irqrestore(&pool->lock, flags);
  if (pool->dev)
   dev_err(pool->dev,
    "dma_pool_free %s, %p/%lx (bad dma)\n",
    pool->name, vaddr, (unsigned long)dma);
  else
   pr_err("dma_pool_free %s, %p/%lx (bad dma)\n",
          pool->name, vaddr, (unsigned long)dma);
  return;
 }

 offset = vaddr - page->vaddr;
 if (want_init_on_free())
  memset(vaddr, 0, pool->size);
 page->in_use--;
 *(int *)vaddr = page->offset;
 page->offset = offset;





 spin_unlock_irqrestore(&pool->lock, flags);
}
