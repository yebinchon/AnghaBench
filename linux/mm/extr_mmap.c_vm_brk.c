
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vm_brk_flags (unsigned long,unsigned long,int ) ;

int vm_brk(unsigned long addr, unsigned long len)
{
 return vm_brk_flags(addr, len, 0);
}
