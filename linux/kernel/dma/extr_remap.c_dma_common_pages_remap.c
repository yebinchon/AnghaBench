
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {void* addr; struct page** pages; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;


 struct vm_struct* __dma_common_pages_remap (struct page**,size_t,int ,void const*) ;

void *dma_common_pages_remap(struct page **pages, size_t size,
    pgprot_t prot, const void *caller)
{
 struct vm_struct *area;

 area = __dma_common_pages_remap(pages, size, prot, caller);
 if (!area)
  return ((void*)0);

 area->pages = pages;

 return area->addr;
}
