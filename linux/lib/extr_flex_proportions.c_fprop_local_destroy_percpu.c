
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_local_percpu {int events; } ;


 int percpu_counter_destroy (int *) ;

void fprop_local_destroy_percpu(struct fprop_local_percpu *pl)
{
 percpu_counter_destroy(&pl->events);
}
