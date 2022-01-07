
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ runtime; } ;
struct task_struct {TYPE_1__ dl; } ;
struct rq {int dl; } ;


 scalar_t__ hrtick_enabled (struct rq*) ;
 scalar_t__ is_leftmost (struct task_struct*,int *) ;
 int rq_clock_pelt (struct rq*) ;
 int start_hrtick_dl (struct rq*,struct task_struct*) ;
 int update_curr_dl (struct rq*) ;
 int update_dl_rq_load_avg (int ,struct rq*,int) ;

__attribute__((used)) static void task_tick_dl(struct rq *rq, struct task_struct *p, int queued)
{
 update_curr_dl(rq);

 update_dl_rq_load_avg(rq_clock_pelt(rq), rq, 1);





 if (hrtick_enabled(rq) && queued && p->dl.runtime > 0 &&
     is_leftmost(p, &rq->dl))
  start_hrtick_dl(rq, p);
}
