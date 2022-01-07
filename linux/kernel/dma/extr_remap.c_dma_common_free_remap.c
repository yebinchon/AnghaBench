
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {scalar_t__ flags; } ;


 int PAGE_ALIGN (size_t) ;
 scalar_t__ VM_DMA_COHERENT ;
 int WARN (int,char*,void*) ;
 struct vm_struct* find_vm_area (void*) ;
 int unmap_kernel_range (unsigned long,int ) ;
 int vunmap (void*) ;

void dma_common_free_remap(void *cpu_addr, size_t size)
{
 struct vm_struct *area = find_vm_area(cpu_addr);

 if (!area || area->flags != VM_DMA_COHERENT) {
  WARN(1, "trying to free invalid coherent area: %p\n", cpu_addr);
  return;
 }

 unmap_kernel_range((unsigned long)cpu_addr, PAGE_ALIGN(size));
 vunmap(cpu_addr);
}
