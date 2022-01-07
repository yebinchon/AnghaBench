
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_rq {scalar_t__ rt_queued; int rt_nr_running; } ;
struct rq {int nr_running; struct rt_rq rt; } ;


 int BUG_ON (int) ;
 struct rq* rq_of_rt_rq (struct rt_rq*) ;
 int sub_nr_running (struct rq*,int ) ;

__attribute__((used)) static void
dequeue_top_rt_rq(struct rt_rq *rt_rq)
{
 struct rq *rq = rq_of_rt_rq(rt_rq);

 BUG_ON(&rq->rt != rt_rq);

 if (!rt_rq->rt_queued)
  return;

 BUG_ON(!rq->nr_running);

 sub_nr_running(rq, rt_rq->rt_nr_running);
 rt_rq->rt_queued = 0;

}
