
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int smp_call_func_t ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ call_single_data_t ;


 int CSD_FLAG_LOCK ;
 int CSD_FLAG_SYNCHRONOUS ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ cpu_online (int) ;
 int csd_data ;
 int csd_lock (TYPE_1__*) ;
 int csd_lock_wait (TYPE_1__*) ;
 int generic_exec_single (int,TYPE_1__*,int ,void*) ;
 int get_cpu () ;
 int in_task () ;
 scalar_t__ irqs_disabled () ;
 int oops_in_progress ;
 int put_cpu () ;
 TYPE_1__* this_cpu_ptr (int *) ;

int smp_call_function_single(int cpu, smp_call_func_t func, void *info,
        int wait)
{
 call_single_data_t *csd;
 call_single_data_t csd_stack = {
  .flags = CSD_FLAG_LOCK | CSD_FLAG_SYNCHRONOUS,
 };
 int this_cpu;
 int err;





 this_cpu = get_cpu();







 WARN_ON_ONCE(cpu_online(this_cpu) && irqs_disabled()
       && !oops_in_progress);







 WARN_ON_ONCE(!in_task());

 csd = &csd_stack;
 if (!wait) {
  csd = this_cpu_ptr(&csd_data);
  csd_lock(csd);
 }

 err = generic_exec_single(cpu, csd, func, info);

 if (wait)
  csd_lock_wait(csd);

 put_cpu();

 return err;
}
