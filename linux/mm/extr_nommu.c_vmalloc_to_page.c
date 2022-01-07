
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 struct page* virt_to_page (void const*) ;

struct page *vmalloc_to_page(const void *addr)
{
 return virt_to_page(addr);
}
