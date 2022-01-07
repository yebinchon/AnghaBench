
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int __vunmap (void const*,int ) ;
 int in_interrupt () ;
 int might_sleep () ;

void vunmap(const void *addr)
{
 BUG_ON(in_interrupt());
 might_sleep();
 if (addr)
  __vunmap(addr, 0);
}
