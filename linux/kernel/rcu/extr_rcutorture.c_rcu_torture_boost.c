
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
struct rcu_boost_inflight {int rcu; int inflight; } ;


 unsigned long HZ ;
 int SCHED_FIFO ;
 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 int VERBOSE_TOROUT_STRING (char*) ;
 int boost_mutex ;
 unsigned long boost_starttime ;
 int call_rcu (int *,int ) ;
 int current ;
 int destroy_rcu_head_on_stack (int *) ;
 int init_rcu_head_on_stack (int *) ;
 unsigned long jiffies ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int n_rcu_torture_boost_rterror ;
 int n_rcu_torture_boosts ;
 int rcu_torture_boost_cb ;
 scalar_t__ rcu_torture_boost_failed (unsigned long,unsigned long) ;
 scalar_t__ sched_setscheduler (int ,int ,struct sched_param*) ;
 int schedule_timeout_interruptible (unsigned long) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ smp_load_acquire (int *) ;
 int smp_store_release (int *,int) ;
 int stutter_wait (char*) ;
 unsigned long test_boost_duration ;
 unsigned long test_boost_interval ;
 int torture_kthread_stopping (char*) ;
 scalar_t__ torture_must_stop () ;
 int torture_shutdown_absorb (char*) ;

__attribute__((used)) static int rcu_torture_boost(void *arg)
{
 unsigned long call_rcu_time;
 unsigned long endtime;
 unsigned long oldstarttime;
 struct rcu_boost_inflight rbi = { .inflight = 0 };
 struct sched_param sp;

 VERBOSE_TOROUT_STRING("rcu_torture_boost started");


 sp.sched_priority = 1;
 if (sched_setscheduler(current, SCHED_FIFO, &sp) < 0) {
  VERBOSE_TOROUT_STRING("rcu_torture_boost RT prio failed!");
  n_rcu_torture_boost_rterror++;
 }

 init_rcu_head_on_stack(&rbi.rcu);

 do {

  bool failed = 0;


  while (!kthread_should_stop()) {
   if (mutex_trylock(&boost_mutex)) {
    n_rcu_torture_boosts++;
    mutex_unlock(&boost_mutex);
    break;
   }
   schedule_timeout_uninterruptible(1);
  }
  if (kthread_should_stop())
   goto checkwait;


  oldstarttime = boost_starttime;
  while (ULONG_CMP_LT(jiffies, oldstarttime)) {
   schedule_timeout_interruptible(oldstarttime - jiffies);
   stutter_wait("rcu_torture_boost");
   if (torture_must_stop())
    goto checkwait;
  }


  endtime = oldstarttime + test_boost_duration * HZ;
  call_rcu_time = jiffies;
  while (ULONG_CMP_LT(jiffies, endtime)) {

   if (!smp_load_acquire(&rbi.inflight)) {

    smp_store_release(&rbi.inflight, 1);
    call_rcu(&rbi.rcu, rcu_torture_boost_cb);

    failed = failed ||
      rcu_torture_boost_failed(call_rcu_time,
         jiffies);
    call_rcu_time = jiffies;
   }
   stutter_wait("rcu_torture_boost");
   if (torture_must_stop())
    goto checkwait;
  }






  if (!failed && smp_load_acquire(&rbi.inflight))
   rcu_torture_boost_failed(call_rcu_time, jiffies);
  while (oldstarttime == boost_starttime &&
         !kthread_should_stop()) {
   if (mutex_trylock(&boost_mutex)) {
    boost_starttime = jiffies +
        test_boost_interval * HZ;
    mutex_unlock(&boost_mutex);
    break;
   }
   schedule_timeout_uninterruptible(1);
  }


checkwait: stutter_wait("rcu_torture_boost");
 } while (!torture_must_stop());


 while (!kthread_should_stop() || smp_load_acquire(&rbi.inflight)) {
  torture_shutdown_absorb("rcu_torture_boost");
  schedule_timeout_uninterruptible(1);
 }
 destroy_rcu_head_on_stack(&rbi.rcu);
 torture_kthread_stopping("rcu_torture_boost");
 return 0;
}
