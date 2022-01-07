
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int order; int dma_dir; int dev; } ;
struct page_pool {int pages_state_release_cnt; TYPE_1__ p; } ;
struct page {scalar_t__ dma_addr; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int PAGE_SIZE ;
 int PP_FLAG_DMA_MAP ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dma_unmap_page_attrs (int ,scalar_t__,int,int ,int ) ;
 int trace_page_pool_state_release (struct page_pool*,struct page*,int ) ;

__attribute__((used)) static void __page_pool_clean_page(struct page_pool *pool,
       struct page *page)
{
 dma_addr_t dma;

 if (!(pool->p.flags & PP_FLAG_DMA_MAP))
  goto skip_dma_unmap;

 dma = page->dma_addr;

 dma_unmap_page_attrs(pool->p.dev, dma,
        PAGE_SIZE << pool->p.order, pool->p.dma_dir,
        DMA_ATTR_SKIP_CPU_SYNC);
 page->dma_addr = 0;
skip_dma_unmap:
 atomic_inc(&pool->pages_state_release_cnt);
 trace_page_pool_state_release(pool, page,
         atomic_read(&pool->pages_state_release_cnt));
}
