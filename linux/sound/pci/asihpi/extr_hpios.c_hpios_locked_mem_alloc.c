
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct consistent_dma_area {scalar_t__ size; int * pdev; scalar_t__ vaddr; scalar_t__ dma_handle; } ;


 int DEBUG ;
 int GFP_KERNEL ;
 int HPI_DEBUG_LOG (int ,char*,scalar_t__,...) ;
 int WARNING ;
 scalar_t__ dma_alloc_coherent (int *,scalar_t__,scalar_t__*,int ) ;

u16 hpios_locked_mem_alloc(struct consistent_dma_area *p_mem_area, u32 size,
 struct pci_dev *pdev)
{

 p_mem_area->vaddr =
  dma_alloc_coherent(&pdev->dev, size, &p_mem_area->dma_handle,
  GFP_KERNEL);

 if (p_mem_area->vaddr) {
  HPI_DEBUG_LOG(DEBUG, "allocated %d bytes, dma 0x%x vma %p\n",
   size, (unsigned int)p_mem_area->dma_handle,
   p_mem_area->vaddr);
  p_mem_area->pdev = &pdev->dev;
  p_mem_area->size = size;
  return 0;
 } else {
  HPI_DEBUG_LOG(WARNING,
   "failed to allocate %d bytes locked memory\n", size);
  p_mem_area->size = 0;
  return 1;
 }
}
