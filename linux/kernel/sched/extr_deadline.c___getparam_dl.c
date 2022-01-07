
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int flags; int dl_period; int dl_deadline; int dl_runtime; } ;
struct task_struct {int rt_priority; struct sched_dl_entity dl; } ;
struct sched_attr {int sched_flags; int sched_period; int sched_deadline; int sched_runtime; int sched_priority; } ;



void __getparam_dl(struct task_struct *p, struct sched_attr *attr)
{
 struct sched_dl_entity *dl_se = &p->dl;

 attr->sched_priority = p->rt_priority;
 attr->sched_runtime = dl_se->dl_runtime;
 attr->sched_deadline = dl_se->dl_deadline;
 attr->sched_period = dl_se->dl_period;
 attr->sched_flags = dl_se->flags;
}
