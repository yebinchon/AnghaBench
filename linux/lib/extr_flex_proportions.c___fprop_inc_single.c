
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_local_single {int events; } ;
struct fprop_global {int events; } ;


 int fprop_reflect_period_single (struct fprop_global*,struct fprop_local_single*) ;
 int percpu_counter_add (int *,int) ;

void __fprop_inc_single(struct fprop_global *p, struct fprop_local_single *pl)
{
 fprop_reflect_period_single(p, pl);
 pl->events++;
 percpu_counter_add(&p->events, 1);
}
