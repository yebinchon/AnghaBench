
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ULONG_MAX ;
 int _vm_unmap_aliases (unsigned long,unsigned long,int) ;

void vm_unmap_aliases(void)
{
 unsigned long start = ULONG_MAX, end = 0;
 int flush = 0;

 _vm_unmap_aliases(start, end, flush);
}
