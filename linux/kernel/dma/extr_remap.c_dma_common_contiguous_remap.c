
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {void* addr; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;


 int GFP_KERNEL ;
 size_t PAGE_SHIFT ;
 struct vm_struct* __dma_common_pages_remap (struct page**,size_t,int ,void const*) ;
 int get_order (size_t) ;
 int kfree (struct page**) ;
 struct page** kmalloc (int,int ) ;
 struct page* nth_page (struct page*,int) ;

void *dma_common_contiguous_remap(struct page *page, size_t size,
   pgprot_t prot, const void *caller)
{
 int i;
 struct page **pages;
 struct vm_struct *area;

 pages = kmalloc(sizeof(struct page *) << get_order(size), GFP_KERNEL);
 if (!pages)
  return ((void*)0);

 for (i = 0; i < (size >> PAGE_SHIFT); i++)
  pages[i] = nth_page(page, i);

 area = __dma_common_pages_remap(pages, size, prot, caller);

 kfree(pages);

 if (!area)
  return ((void*)0);
 return area->addr;
}
