
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int dummy; } ;


 int fire_sched_out_preempt_notifiers (struct task_struct*,struct task_struct*) ;
 int kcov_prepare_switch (struct task_struct*) ;
 int perf_event_task_sched_out (struct task_struct*,struct task_struct*) ;
 int prepare_arch_switch (struct task_struct*) ;
 int prepare_task (struct task_struct*) ;
 int rseq_preempt (struct task_struct*) ;
 int sched_info_switch (struct rq*,struct task_struct*,struct task_struct*) ;

__attribute__((used)) static inline void
prepare_task_switch(struct rq *rq, struct task_struct *prev,
      struct task_struct *next)
{
 kcov_prepare_switch(prev);
 sched_info_switch(rq, prev, next);
 perf_event_task_sched_out(prev, next);
 rseq_preempt(prev);
 fire_sched_out_preempt_notifiers(prev, next);
 prepare_task(next);
 prepare_arch_switch(next);
}
