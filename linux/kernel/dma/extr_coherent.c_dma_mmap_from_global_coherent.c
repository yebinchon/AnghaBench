
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int __dma_mmap_from_coherent (int ,struct vm_area_struct*,void*,size_t,int*) ;
 int dma_coherent_default_memory ;

int dma_mmap_from_global_coherent(struct vm_area_struct *vma, void *vaddr,
       size_t size, int *ret)
{
 if (!dma_coherent_default_memory)
  return 0;

 return __dma_mmap_from_coherent(dma_coherent_default_memory, vma,
     vaddr, size, ret);
}
