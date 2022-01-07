
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int dummy; } ;
struct rt_rq {int rr_nr_running; scalar_t__ rt_nr_running; } ;


 int WARN_ON (int) ;
 int dec_rt_group (struct sched_rt_entity*,struct rt_rq*) ;
 int dec_rt_migration (struct sched_rt_entity*,struct rt_rq*) ;
 int dec_rt_prio (struct rt_rq*,int ) ;
 int rt_prio (int ) ;
 scalar_t__ rt_se_nr_running (struct sched_rt_entity*) ;
 int rt_se_prio (struct sched_rt_entity*) ;
 scalar_t__ rt_se_rr_nr_running (struct sched_rt_entity*) ;

__attribute__((used)) static inline
void dec_rt_tasks(struct sched_rt_entity *rt_se, struct rt_rq *rt_rq)
{
 WARN_ON(!rt_prio(rt_se_prio(rt_se)));
 WARN_ON(!rt_rq->rt_nr_running);
 rt_rq->rt_nr_running -= rt_se_nr_running(rt_se);
 rt_rq->rr_nr_running -= rt_se_rr_nr_running(rt_se);

 dec_rt_prio(rt_rq, rt_se_prio(rt_se));
 dec_rt_migration(rt_se, rt_rq);
 dec_rt_group(rt_se, rt_rq);
}
