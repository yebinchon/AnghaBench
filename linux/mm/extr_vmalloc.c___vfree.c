
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vfree_deferred (void const*) ;
 int __vunmap (void const*,int) ;
 int in_interrupt () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void __vfree(const void *addr)
{
 if (unlikely(in_interrupt()))
  __vfree_deferred(addr);
 else
  __vunmap(addr, 1);
}
