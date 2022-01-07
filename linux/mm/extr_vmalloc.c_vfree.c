
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int __vfree (void const*) ;
 int in_interrupt () ;
 int in_nmi () ;
 int kmemleak_free (void const*) ;
 int might_sleep_if (int) ;

void vfree(const void *addr)
{
 BUG_ON(in_nmi());

 kmemleak_free(addr);

 might_sleep_if(!in_interrupt());

 if (!addr)
  return;

 __vfree(addr);
}
