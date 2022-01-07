
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int pid_; int tid; } ;
struct machine {int dummy; } ;


 struct thread* machine__find_thread (struct machine*,int,int) ;
 struct thread* thread__get (struct thread*) ;

struct thread *thread__main_thread(struct machine *machine, struct thread *thread)
{
 if (thread->pid_ == thread->tid)
  return thread__get(thread);

 if (thread->pid_ == -1)
  return ((void*)0);

 return machine__find_thread(machine, thread->pid_, thread->pid_);
}
