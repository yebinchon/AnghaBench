
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fqs ) () ;} ;


 unsigned long HZ ;
 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 int VERBOSE_TOROUT_STRING (char*) ;
 TYPE_1__* cur_ops ;
 int fqs_duration ;
 scalar_t__ fqs_holdoff ;
 unsigned long fqs_stutter ;
 unsigned long jiffies ;
 int kthread_should_stop () ;
 int schedule_timeout_interruptible (int) ;
 int stub1 () ;
 int stutter_wait (char*) ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;
 int udelay (scalar_t__) ;

__attribute__((used)) static int
rcu_torture_fqs(void *arg)
{
 unsigned long fqs_resume_time;
 int fqs_burst_remaining;

 VERBOSE_TOROUT_STRING("rcu_torture_fqs task started");
 do {
  fqs_resume_time = jiffies + fqs_stutter * HZ;
  while (ULONG_CMP_LT(jiffies, fqs_resume_time) &&
         !kthread_should_stop()) {
   schedule_timeout_interruptible(1);
  }
  fqs_burst_remaining = fqs_duration;
  while (fqs_burst_remaining > 0 &&
         !kthread_should_stop()) {
   cur_ops->fqs();
   udelay(fqs_holdoff);
   fqs_burst_remaining -= fqs_holdoff;
  }
  stutter_wait("rcu_torture_fqs");
 } while (!torture_must_stop());
 torture_kthread_stopping("rcu_torture_fqs");
 return 0;
}
