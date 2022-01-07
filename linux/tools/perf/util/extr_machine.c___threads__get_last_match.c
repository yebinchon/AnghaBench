
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threads {struct thread* last_match; } ;
struct thread {int tid; } ;
struct machine {int dummy; } ;


 int machine__update_thread_pid (struct machine*,struct thread*,int) ;
 struct thread* thread__get (struct thread*) ;

__attribute__((used)) static struct thread*
__threads__get_last_match(struct threads *threads, struct machine *machine,
     int pid, int tid)
{
 struct thread *th;

 th = threads->last_match;
 if (th != ((void*)0)) {
  if (th->tid == tid) {
   machine__update_thread_pid(machine, th, pid);
   return thread__get(th);
  }

  threads->last_match = ((void*)0);
 }

 return ((void*)0);
}
