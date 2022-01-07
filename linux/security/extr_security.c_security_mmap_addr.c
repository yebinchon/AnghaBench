
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_int_hook (int ,int ,unsigned long) ;
 int mmap_addr ;

int security_mmap_addr(unsigned long addr)
{
 return call_int_hook(mmap_addr, 0, addr);
}
