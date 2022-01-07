
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union map_priv {int color; int ptr; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int color_pids; } ;
struct perf_sched {TYPE_1__ map; } ;
struct machine {int dummy; } ;
typedef int pid_t ;


 struct thread* machine__findnew_thread (struct machine*,int ,int ) ;
 scalar_t__ thread__priv (struct thread*) ;
 int thread__set_priv (struct thread*,int ) ;
 scalar_t__ thread_map__has (int ,int ) ;

__attribute__((used)) static struct thread*
map__findnew_thread(struct perf_sched *sched, struct machine *machine, pid_t pid, pid_t tid)
{
 struct thread *thread = machine__findnew_thread(machine, pid, tid);
 union map_priv priv = {
  .color = 0,
 };

 if (!sched->map.color_pids || !thread || thread__priv(thread))
  return thread;

 if (thread_map__has(sched->map.color_pids, tid))
  priv.color = 1;

 thread__set_priv(thread, priv.ptr);
 return thread;
}
