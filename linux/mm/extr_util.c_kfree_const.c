
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_kernel_rodata (unsigned long) ;
 int kfree (void const*) ;

void kfree_const(const void *x)
{
 if (!is_kernel_rodata((unsigned long)x))
  kfree(x);
}
