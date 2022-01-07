
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long page_to_pfn (int ) ;
 int virt_to_page (void const*) ;

unsigned long vmalloc_to_pfn(const void *addr)
{
 return page_to_pfn(virt_to_page(addr));
}
