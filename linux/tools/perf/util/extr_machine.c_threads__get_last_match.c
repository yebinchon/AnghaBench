
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threads {int dummy; } ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;


 struct thread* __threads__get_last_match (struct threads*,struct machine*,int,int) ;
 scalar_t__ perf_singlethreaded ;

__attribute__((used)) static struct thread*
threads__get_last_match(struct threads *threads, struct machine *machine,
   int pid, int tid)
{
 struct thread *th = ((void*)0);

 if (perf_singlethreaded)
  th = __threads__get_last_match(threads, machine, pid, tid);

 return th;
}
