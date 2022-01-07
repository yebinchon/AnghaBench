
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {scalar_t__ flags; struct page** pages; } ;
struct page {int dummy; } ;


 scalar_t__ VM_DMA_COHERENT ;
 struct vm_struct* find_vm_area (void*) ;

struct page **dma_common_find_pages(void *cpu_addr)
{
 struct vm_struct *area = find_vm_area(cpu_addr);

 if (!area || area->flags != VM_DMA_COHERENT)
  return ((void*)0);
 return area->pages;
}
