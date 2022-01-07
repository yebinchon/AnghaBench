
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int dl_runtime; int dl_deadline; void* dl_density; int dl_period; void* dl_bw; int flags; } ;
struct task_struct {struct sched_dl_entity dl; } ;
struct sched_attr {int sched_flags; scalar_t__ sched_period; int sched_deadline; int sched_runtime; } ;


 void* to_ratio (int ,int ) ;

void __setparam_dl(struct task_struct *p, const struct sched_attr *attr)
{
 struct sched_dl_entity *dl_se = &p->dl;

 dl_se->dl_runtime = attr->sched_runtime;
 dl_se->dl_deadline = attr->sched_deadline;
 dl_se->dl_period = attr->sched_period ?: dl_se->dl_deadline;
 dl_se->flags = attr->sched_flags;
 dl_se->dl_bw = to_ratio(dl_se->dl_period, dl_se->dl_runtime);
 dl_se->dl_density = to_ratio(dl_se->dl_deadline, dl_se->dl_runtime);
}
