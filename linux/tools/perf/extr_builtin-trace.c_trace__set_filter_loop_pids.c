
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ map; } ;
struct trace {TYPE_1__ filter_pids; int evlist; int host; } ;
struct thread {int tid; int ppid; } ;
typedef int pid_t ;


 unsigned int ARRAY_SIZE (int *) ;
 unsigned int bpf_map__set_filter_pids (scalar_t__,unsigned int,int *) ;
 int getpid () ;
 struct thread* machine__find_thread (int ,int ,int ) ;
 unsigned int perf_evlist__set_tp_filter_pids (int ,unsigned int,int *) ;
 int strcmp (int ,char*) ;
 scalar_t__ strstarts (int ,char*) ;
 int thread__comm_str (struct thread*) ;

__attribute__((used)) static int trace__set_filter_loop_pids(struct trace *trace)
{
 unsigned int nr = 1, err;
 pid_t pids[32] = {
  getpid(),
 };
 struct thread *thread = machine__find_thread(trace->host, pids[0], pids[0]);

 while (thread && nr < ARRAY_SIZE(pids)) {
  struct thread *parent = machine__find_thread(trace->host, thread->ppid, thread->ppid);

  if (parent == ((void*)0))
   break;

  if (!strcmp(thread__comm_str(parent), "sshd") ||
      strstarts(thread__comm_str(parent), "gnome-terminal")) {
   pids[nr++] = parent->tid;
   break;
  }
  thread = parent;
 }

 err = perf_evlist__set_tp_filter_pids(trace->evlist, nr, pids);
 if (!err && trace->filter_pids.map)
  err = bpf_map__set_filter_pids(trace->filter_pids.map, nr, pids);

 return err;
}
