
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VM_BUG_ON (int) ;
 int __free_pages (int ,unsigned int) ;
 int virt_addr_valid (void*) ;
 int virt_to_page (void*) ;

void free_pages(unsigned long addr, unsigned int order)
{
 if (addr != 0) {
  VM_BUG_ON(!virt_addr_valid((void *)addr));
  __free_pages(virt_to_page((void *)addr), order);
 }
}
