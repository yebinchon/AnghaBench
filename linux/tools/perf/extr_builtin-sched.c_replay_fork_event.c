
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptid; int ppid; int tid; int pid; } ;
union perf_event {TYPE_1__ fork; } ;
struct thread {int tid; } ;
struct perf_sched {int dummy; } ;
struct machine {int dummy; } ;


 struct thread* machine__findnew_thread (struct machine*,int ,int ) ;
 int pr_debug (char*,struct thread*,struct thread*) ;
 int printf (char*,...) ;
 int register_pid (struct perf_sched*,int,char*) ;
 char* thread__comm_str (struct thread*) ;
 int thread__put (struct thread*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int replay_fork_event(struct perf_sched *sched,
        union perf_event *event,
        struct machine *machine)
{
 struct thread *child, *parent;

 child = machine__findnew_thread(machine, event->fork.pid,
     event->fork.tid);
 parent = machine__findnew_thread(machine, event->fork.ppid,
      event->fork.ptid);

 if (child == ((void*)0) || parent == ((void*)0)) {
  pr_debug("thread does not exist on fork event: child %p, parent %p\n",
     child, parent);
  goto out_put;
 }

 if (verbose > 0) {
  printf("fork event\n");
  printf("... parent: %s/%d\n", thread__comm_str(parent), parent->tid);
  printf("...  child: %s/%d\n", thread__comm_str(child), child->tid);
 }

 register_pid(sched, parent->tid, thread__comm_str(parent));
 register_pid(sched, child->tid, thread__comm_str(child));
out_put:
 thread__put(child);
 thread__put(parent);
 return 0;
}
