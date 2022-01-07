
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int __vfree_deferred (void const*) ;
 int in_nmi () ;
 int kmemleak_free (void const*) ;

void vfree_atomic(const void *addr)
{
 BUG_ON(in_nmi());

 kmemleak_free(addr);

 if (!addr)
  return;
 __vfree_deferred(addr);
}
