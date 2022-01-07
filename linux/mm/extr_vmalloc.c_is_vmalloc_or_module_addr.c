
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MODULES_END ;
 unsigned long MODULES_VADDR ;
 int is_vmalloc_addr (void const*) ;

int is_vmalloc_or_module_addr(const void *x)
{
 return is_vmalloc_addr(x);
}
