
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * oldmem_pfn_is_ram ;
 int wmb () ;

void unregister_oldmem_pfn_is_ram(void)
{
 oldmem_pfn_is_ram = ((void*)0);
 wmb();
}
