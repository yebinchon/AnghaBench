
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int cpu; } ;
struct machine {int* current_tid; TYPE_1__* env; } ;
typedef int pid_t ;
struct TYPE_2__ {int nr_cpus_online; } ;


 int EINVAL ;
 int ENOMEM ;
 int MAX_NR_CPUS ;
 int* calloc (int,int) ;
 struct thread* machine__findnew_thread (struct machine*,int,int) ;
 int min (int ,int ) ;
 int pr_err (char*,...) ;
 int thread__put (struct thread*) ;

int machine__set_current_tid(struct machine *machine, int cpu, pid_t pid,
        pid_t tid)
{
 struct thread *thread;
 int nr_cpus = min(machine->env->nr_cpus_online, MAX_NR_CPUS);

 if (cpu < 0)
  return -EINVAL;

 if (!machine->current_tid) {
  int i;

  machine->current_tid = calloc(nr_cpus, sizeof(pid_t));
  if (!machine->current_tid)
   return -ENOMEM;
  for (i = 0; i < nr_cpus; i++)
   machine->current_tid[i] = -1;
 }

 if (cpu >= nr_cpus) {
  pr_err("Requested CPU %d too large. ", cpu);
  pr_err("Consider raising MAX_NR_CPUS\n");
  return -EINVAL;
 }

 machine->current_tid[cpu] = tid;

 thread = machine__findnew_thread(machine, pid, tid);
 if (!thread)
  return -ENOMEM;

 thread->cpu = cpu;
 thread__put(thread);

 return 0;
}
