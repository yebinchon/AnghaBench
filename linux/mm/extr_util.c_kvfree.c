
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_vmalloc_addr (void const*) ;
 int kfree (void const*) ;
 int vfree (void const*) ;

void kvfree(const void *addr)
{
 if (is_vmalloc_addr(addr))
  vfree(addr);
 else
  kfree(addr);
}
