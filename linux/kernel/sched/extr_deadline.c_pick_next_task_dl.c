
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_dl_entity {int dummy; } ;
struct rq_flags {int dummy; } ;
struct dl_rq {int dummy; } ;
struct rq {struct dl_rq dl; } ;


 int BUG_ON (int) ;
 int WARN_ON_ONCE (int) ;
 struct task_struct* dl_task_of (struct sched_dl_entity*) ;
 struct sched_dl_entity* pick_next_dl_entity (struct rq*,struct dl_rq*) ;
 int sched_dl_runnable (struct rq*) ;
 int set_next_task_dl (struct rq*,struct task_struct*) ;

__attribute__((used)) static struct task_struct *
pick_next_task_dl(struct rq *rq, struct task_struct *prev, struct rq_flags *rf)
{
 struct sched_dl_entity *dl_se;
 struct dl_rq *dl_rq = &rq->dl;
 struct task_struct *p;

 WARN_ON_ONCE(prev || rf);

 if (!sched_dl_runnable(rq))
  return ((void*)0);

 dl_se = pick_next_dl_entity(rq, dl_rq);
 BUG_ON(!dl_se);
 p = dl_task_of(dl_se);
 set_next_task_dl(rq, p);
 return p;
}
