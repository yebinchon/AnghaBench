
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_stop_work {void* arg; struct cpu_stop_done* done; int fn; } ;
struct cpu_stop_done {int ret; int completion; } ;
typedef int cpu_stop_fn_t ;


 int ENOENT ;
 int cond_resched () ;
 int cpu_stop_init_done (struct cpu_stop_done*,int) ;
 int cpu_stop_queue_work (unsigned int,struct cpu_stop_work*) ;
 int wait_for_completion (int *) ;

int stop_one_cpu(unsigned int cpu, cpu_stop_fn_t fn, void *arg)
{
 struct cpu_stop_done done;
 struct cpu_stop_work work = { .fn = fn, .arg = arg, .done = &done };

 cpu_stop_init_done(&done, 1);
 if (!cpu_stop_queue_work(cpu, &work))
  return -ENOENT;




 cond_resched();
 wait_for_completion(&done.completion);
 return done.ret;
}
