
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __dma_release_from_coherent (int ,int,void*) ;
 int dma_coherent_default_memory ;

int dma_release_from_global_coherent(int order, void *vaddr)
{
 if (!dma_coherent_default_memory)
  return 0;

 return __dma_release_from_coherent(dma_coherent_default_memory, order,
   vaddr);
}
