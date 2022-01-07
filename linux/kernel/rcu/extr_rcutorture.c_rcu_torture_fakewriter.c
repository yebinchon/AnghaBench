
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* exp_sync ) () ;int (* sync ) () ;int (* cb_barrier ) () ;} ;


 int DEFINE_TORTURE_RANDOM (int ) ;
 int MAX_NICE ;
 int VERBOSE_TOROUT_STRING (char*) ;
 TYPE_1__* cur_ops ;
 int current ;
 scalar_t__ gp_exp ;
 scalar_t__ gp_normal ;
 int nfakewriters ;
 int rand ;
 int schedule_timeout_uninterruptible (int) ;
 int set_user_nice (int ,int ) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;
 int stub5 () ;
 int stutter_wait (char*) ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;
 int torture_random (int *) ;
 int udelay (int) ;

__attribute__((used)) static int
rcu_torture_fakewriter(void *arg)
{
 DEFINE_TORTURE_RANDOM(rand);

 VERBOSE_TOROUT_STRING("rcu_torture_fakewriter task started");
 set_user_nice(current, MAX_NICE);

 do {
  schedule_timeout_uninterruptible(1 + torture_random(&rand)%10);
  udelay(torture_random(&rand) & 0x3ff);
  if (cur_ops->cb_barrier != ((void*)0) &&
      torture_random(&rand) % (nfakewriters * 8) == 0) {
   cur_ops->cb_barrier();
  } else if (gp_normal == gp_exp) {
   if (cur_ops->sync && torture_random(&rand) & 0x80)
    cur_ops->sync();
   else if (cur_ops->exp_sync)
    cur_ops->exp_sync();
  } else if (gp_normal && cur_ops->sync) {
   cur_ops->sync();
  } else if (cur_ops->exp_sync) {
   cur_ops->exp_sync();
  }
  stutter_wait("rcu_torture_fakewriter");
 } while (!torture_must_stop());

 torture_kthread_stopping("rcu_torture_fakewriter");
 return 0;
}
