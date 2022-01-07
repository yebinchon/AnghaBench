
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int nr_running; } ;


 int sched_update_tick_dependency (struct rq*) ;

__attribute__((used)) static inline void sub_nr_running(struct rq *rq, unsigned count)
{
 rq->nr_running -= count;

 sched_update_tick_dependency(rq);
}
