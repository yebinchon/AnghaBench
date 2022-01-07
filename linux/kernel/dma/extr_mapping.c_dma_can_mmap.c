
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {int * mmap; } ;
struct device {int dummy; } ;


 int CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN ;
 int CONFIG_MMU ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ dev_is_dma_coherent (struct device*) ;
 scalar_t__ dma_is_direct (struct dma_map_ops const*) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;

bool dma_can_mmap(struct device *dev)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);

 if (dma_is_direct(ops)) {
  return IS_ENABLED(CONFIG_MMU) &&
         (dev_is_dma_coherent(dev) ||
   IS_ENABLED(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN));
 }

 return ops->mmap != ((void*)0);
}
