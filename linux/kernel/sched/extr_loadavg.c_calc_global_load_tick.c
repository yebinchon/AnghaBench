
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int calc_load_update; } ;


 scalar_t__ LOAD_FREQ ;
 int atomic_long_add (long,int *) ;
 long calc_load_fold_active (struct rq*,int ) ;
 int calc_load_tasks ;
 int jiffies ;
 scalar_t__ time_before (int ,int ) ;

void calc_global_load_tick(struct rq *this_rq)
{
 long delta;

 if (time_before(jiffies, this_rq->calc_load_update))
  return;

 delta = calc_load_fold_active(this_rq, 0);
 if (delta)
  atomic_long_add(delta, &calc_load_tasks);

 this_rq->calc_load_update += LOAD_FREQ;
}
