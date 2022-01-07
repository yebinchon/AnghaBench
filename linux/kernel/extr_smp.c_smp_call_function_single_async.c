
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int info; int func; } ;
typedef TYPE_1__ call_single_data_t ;


 int CSD_FLAG_LOCK ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int csd_lock_wait (TYPE_1__*) ;
 int generic_exec_single (int,TYPE_1__*,int ,int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_wmb () ;

int smp_call_function_single_async(int cpu, call_single_data_t *csd)
{
 int err = 0;

 preempt_disable();


 if (WARN_ON_ONCE(csd->flags & CSD_FLAG_LOCK))
  csd_lock_wait(csd);

 csd->flags = CSD_FLAG_LOCK;
 smp_wmb();

 err = generic_exec_single(cpu, csd, csd->func, csd->info);
 preempt_enable();

 return err;
}
