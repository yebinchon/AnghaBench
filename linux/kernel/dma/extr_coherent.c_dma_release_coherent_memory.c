
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {struct dma_coherent_mem* bitmap; int virt_base; } ;


 int kfree (struct dma_coherent_mem*) ;
 int memunmap (int ) ;

__attribute__((used)) static void dma_release_coherent_memory(struct dma_coherent_mem *mem)
{
 if (!mem)
  return;

 memunmap(mem->virt_base);
 kfree(mem->bitmap);
 kfree(mem);
}
