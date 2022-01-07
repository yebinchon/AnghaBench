
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {int dummy; } ;
struct device {int dummy; } ;


 int __dma_release_from_coherent (struct dma_coherent_mem*,int,void*) ;
 struct dma_coherent_mem* dev_get_coherent_memory (struct device*) ;

int dma_release_from_dev_coherent(struct device *dev, int order, void *vaddr)
{
 struct dma_coherent_mem *mem = dev_get_coherent_memory(dev);

 return __dma_release_from_coherent(mem, order, vaddr);
}
