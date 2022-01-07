
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_global {int events; } ;


 int percpu_counter_destroy (int *) ;

void fprop_global_destroy(struct fprop_global *p)
{
 percpu_counter_destroy(&p->events);
}
