
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int addr; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;


 int VM_DMA_COHERENT ;
 struct vm_struct* get_vm_area_caller (size_t,int ,void const*) ;
 scalar_t__ map_vm_area (struct vm_struct*,int ,struct page**) ;
 int vunmap (int ) ;

__attribute__((used)) static struct vm_struct *__dma_common_pages_remap(struct page **pages,
   size_t size, pgprot_t prot, const void *caller)
{
 struct vm_struct *area;

 area = get_vm_area_caller(size, VM_DMA_COHERENT, caller);
 if (!area)
  return ((void*)0);

 if (map_vm_area(area, prot, pages)) {
  vunmap(area->addr);
  return ((void*)0);
 }

 return area;
}
