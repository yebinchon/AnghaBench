
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int dma_addr_t ;


 void* __dma_alloc_from_coherent (int ,int ,int *) ;
 int dma_coherent_default_memory ;

void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle)
{
 if (!dma_coherent_default_memory)
  return ((void*)0);

 return __dma_alloc_from_coherent(dma_coherent_default_memory, size,
   dma_handle);
}
