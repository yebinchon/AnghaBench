
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_rq {int rt_queued; int rt_nr_running; } ;
struct rq {struct rt_rq rt; } ;


 int BUG_ON (int) ;
 int add_nr_running (struct rq*,int ) ;
 int cpufreq_update_util (struct rq*,int ) ;
 struct rq* rq_of_rt_rq (struct rt_rq*) ;
 scalar_t__ rt_rq_throttled (struct rt_rq*) ;

__attribute__((used)) static void
enqueue_top_rt_rq(struct rt_rq *rt_rq)
{
 struct rq *rq = rq_of_rt_rq(rt_rq);

 BUG_ON(&rq->rt != rt_rq);

 if (rt_rq->rt_queued)
  return;

 if (rt_rq_throttled(rt_rq))
  return;

 if (rt_rq->rt_nr_running) {
  add_nr_running(rq, rt_rq->rt_nr_running);
  rt_rq->rt_queued = 1;
 }


 cpufreq_update_util(rq, 0);
}
