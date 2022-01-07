
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_desc {int nr_events; int pid; int comm; int nr; } ;
struct perf_sched {unsigned long nr_tasks; struct task_desc** tasks; } ;


 int printf (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void print_task_traces(struct perf_sched *sched)
{
 struct task_desc *task;
 unsigned long i;

 for (i = 0; i < sched->nr_tasks; i++) {
  task = sched->tasks[i];
  printf("task %6ld (%20s:%10ld), nr_events: %ld\n",
   task->nr, task->comm, task->pid, task->nr_events);
 }
}
