
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct consistent_dma_area {scalar_t__ size; int vaddr; scalar_t__ dma_handle; int pdev; } ;


 int DEBUG ;
 int HPI_DEBUG_LOG (int ,char*,unsigned long,unsigned int,int ) ;
 int dma_free_coherent (int ,scalar_t__,int ,scalar_t__) ;

u16 hpios_locked_mem_free(struct consistent_dma_area *p_mem_area)
{
 if (p_mem_area->size) {
  dma_free_coherent(p_mem_area->pdev, p_mem_area->size,
   p_mem_area->vaddr, p_mem_area->dma_handle);
  HPI_DEBUG_LOG(DEBUG, "freed %lu bytes, dma 0x%x vma %p\n",
   (unsigned long)p_mem_area->size,
   (unsigned int)p_mem_area->dma_handle,
   p_mem_area->vaddr);
  p_mem_area->size = 0;
  return 0;
 } else {
  return 1;
 }
}
