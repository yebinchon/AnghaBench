
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_long_set (int *,scalar_t__) ;
 scalar_t__ lazy_max_pages () ;
 int vmap_lazy_nr ;

void set_iounmap_nonlazy(void)
{
 atomic_long_set(&vmap_lazy_nr, lazy_max_pages()+1);
}
