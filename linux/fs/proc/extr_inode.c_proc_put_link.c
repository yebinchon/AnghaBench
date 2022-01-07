
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unuse_pde (void*) ;

__attribute__((used)) static void proc_put_link(void *p)
{
 unuse_pde(p);
}
