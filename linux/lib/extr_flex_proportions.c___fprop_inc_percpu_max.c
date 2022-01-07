
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fprop_local_percpu {int events; } ;
struct fprop_global {int events; } ;


 int FPROP_FRAC_BASE ;
 int FPROP_FRAC_SHIFT ;
 int PROP_BATCH ;
 int fprop_fraction_percpu (struct fprop_global*,struct fprop_local_percpu*,unsigned long*,unsigned long*) ;
 int fprop_reflect_period_percpu (struct fprop_global*,struct fprop_local_percpu*) ;
 int percpu_counter_add (int *,int) ;
 int percpu_counter_add_batch (int *,int,int ) ;
 scalar_t__ unlikely (int) ;

void __fprop_inc_percpu_max(struct fprop_global *p,
       struct fprop_local_percpu *pl, int max_frac)
{
 if (unlikely(max_frac < FPROP_FRAC_BASE)) {
  unsigned long numerator, denominator;

  fprop_fraction_percpu(p, pl, &numerator, &denominator);
  if (numerator >
      (((u64)denominator) * max_frac) >> FPROP_FRAC_SHIFT)
   return;
 } else
  fprop_reflect_period_percpu(p, pl);
 percpu_counter_add_batch(&pl->events, 1, PROP_BATCH);
 percpu_counter_add(&p->events, 1);
}
