
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {void* (* alloc ) (struct device*,size_t,int *,int,unsigned long) ;} ;
struct device {int coherent_dma_mask; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int WARN_ON_ONCE (int) ;
 int __GFP_DMA ;
 int __GFP_DMA32 ;
 int __GFP_HIGHMEM ;
 int debug_dma_alloc_coherent (struct device*,size_t,int ,void*) ;
 scalar_t__ dma_alloc_from_dev_coherent (struct device*,size_t,int *,void**) ;
 void* dma_direct_alloc (struct device*,size_t,int *,int,unsigned long) ;
 scalar_t__ dma_is_direct (struct dma_map_ops const*) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 void* stub1 (struct device*,size_t,int *,int,unsigned long) ;

void *dma_alloc_attrs(struct device *dev, size_t size, dma_addr_t *dma_handle,
  gfp_t flag, unsigned long attrs)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);
 void *cpu_addr;

 WARN_ON_ONCE(!dev->coherent_dma_mask);

 if (dma_alloc_from_dev_coherent(dev, size, dma_handle, &cpu_addr))
  return cpu_addr;


 flag &= ~(__GFP_DMA | __GFP_DMA32 | __GFP_HIGHMEM);

 if (dma_is_direct(ops))
  cpu_addr = dma_direct_alloc(dev, size, dma_handle, flag, attrs);
 else if (ops->alloc)
  cpu_addr = ops->alloc(dev, size, dma_handle, flag, attrs);
 else
  return ((void*)0);

 debug_dma_alloc_coherent(dev, size, *dma_handle, cpu_addr);
 return cpu_addr;
}
