
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int pid_; int tid; scalar_t__ mg; } ;
struct machine {int dummy; } ;
typedef int pid_t ;


 struct thread* __machine__findnew_thread (struct machine*,int,int) ;
 scalar_t__ map_groups__get (scalar_t__) ;
 scalar_t__ map_groups__new (struct machine*) ;
 int thread__put (struct thread*) ;

int thread__init_map_groups(struct thread *thread, struct machine *machine)
{
 pid_t pid = thread->pid_;

 if (pid == thread->tid || pid == -1) {
  thread->mg = map_groups__new(machine);
 } else {
  struct thread *leader = __machine__findnew_thread(machine, pid, pid);
  if (leader) {
   thread->mg = map_groups__get(leader->mg);
   thread__put(leader);
  }
 }

 return thread->mg ? 0 : -1;
}
