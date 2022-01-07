
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {long nr_running; long calc_load_active; scalar_t__ nr_uninterruptible; } ;



long calc_load_fold_active(struct rq *this_rq, long adjust)
{
 long nr_active, delta = 0;

 nr_active = this_rq->nr_running - adjust;
 nr_active += (long)this_rq->nr_uninterruptible;

 if (nr_active != this_rq->calc_load_active) {
  delta = nr_active - this_rq->calc_load_active;
  this_rq->calc_load_active = nr_active;
 }

 return delta;
}
