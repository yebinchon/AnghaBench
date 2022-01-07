
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_local_percpu {int events; } ;
struct fprop_global {int events; } ;


 int PROP_BATCH ;
 int fprop_reflect_period_percpu (struct fprop_global*,struct fprop_local_percpu*) ;
 int percpu_counter_add (int *,int) ;
 int percpu_counter_add_batch (int *,int,int ) ;

void __fprop_inc_percpu(struct fprop_global *p, struct fprop_local_percpu *pl)
{
 fprop_reflect_period_percpu(p, pl);
 percpu_counter_add_batch(&pl->events, 1, PROP_BATCH);
 percpu_counter_add(&p->events, 1);
}
