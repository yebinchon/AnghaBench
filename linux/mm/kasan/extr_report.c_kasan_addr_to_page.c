
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PAGE_OFFSET ;
 void const* high_memory ;
 struct page* virt_to_head_page (void const*) ;

struct page *kasan_addr_to_page(const void *addr)
{
 if ((addr >= (void *)PAGE_OFFSET) &&
   (addr < high_memory))
  return virt_to_head_page(addr);
 return ((void*)0);
}
