
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_call_on_cpu_struct {int (* func ) (void*) ;void* data; unsigned int cpu; int ret; int done; int work; } ;


 int COMPLETION_INITIALIZER_ONSTACK (int ) ;
 int ENXIO ;
 int INIT_WORK_ONSTACK (int *,int ) ;
 int cpu_online (unsigned int) ;
 unsigned int nr_cpu_ids ;
 int queue_work_on (unsigned int,int ,int *) ;
 int smp_call_on_cpu_callback ;
 int system_wq ;
 int wait_for_completion (int *) ;

int smp_call_on_cpu(unsigned int cpu, int (*func)(void *), void *par, bool phys)
{
 struct smp_call_on_cpu_struct sscs = {
  .done = COMPLETION_INITIALIZER_ONSTACK(sscs.done),
  .func = func,
  .data = par,
  .cpu = phys ? cpu : -1,
 };

 INIT_WORK_ONSTACK(&sscs.work, smp_call_on_cpu_callback);

 if (cpu >= nr_cpu_ids || !cpu_online(cpu))
  return -ENXIO;

 queue_work_on(cpu, system_wq, &sscs.work);
 wait_for_completion(&sscs.done);

 return sscs.ret;
}
