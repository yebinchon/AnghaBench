
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct sched_param {int sched_priority; } ;
struct rcu_head {int dummy; } ;
struct TYPE_2__ {int (* exp_completed ) () ;int (* get_gp_seq ) () ;int (* gp_barrier ) () ;int (* sync ) () ;int (* exp_sync ) () ;int (* async ) (struct rcu_head*,int ) ;} ;


 int DUMP_ALL ;
 int GFP_KERNEL ;
 int HZ ;
 int MAX_MEAS ;
 int MIN_MEAS ;
 int PERFOUT_STRING (char*) ;
 int PERF_FLAG ;
 int RTWS_ASYNC ;
 int RTWS_BARRIER ;
 int RTWS_EXP_SYNC ;
 int RTWS_IDLE ;
 int RTWS_STOPPING ;
 int RTWS_SYNC ;
 int SCHED_FIFO ;
 int SCHED_NORMAL ;
 scalar_t__ SYSTEM_RUNNING ;
 int VERBOSE_PERFOUT_STRING (char*) ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int b_rcu_perf_writer_finished ;
 int b_rcu_perf_writer_started ;
 int cpumask_of (long) ;
 TYPE_1__* cur_ops ;
 int current ;
 scalar_t__ gp_async ;
 scalar_t__ gp_async_max ;
 scalar_t__ gp_exp ;
 int holdoff ;
 int kfree (struct rcu_head*) ;
 struct rcu_head* kmalloc (int,int ) ;
 int kthread_should_stop () ;
 void* ktime_get_mono_fast_ns () ;
 int n_async_inflight ;
 int n_rcu_perf_writer_finished ;
 int n_rcu_perf_writer_started ;
 long nr_cpu_ids ;
 scalar_t__ nrealwriters ;
 int perf_type ;
 int pr_alert (char*,int ,int ,long,int) ;
 int rcu_ftrace_dump (int ) ;
 int rcu_perf_async_cb ;
 int rcu_perf_wait_shutdown () ;
 int rcu_perf_writer_state ;
 int sched_setscheduler_nocheck (int ,int ,struct sched_param*) ;
 int schedule_timeout_interruptible (int) ;
 int schedule_timeout_uninterruptible (int) ;
 int set_cpus_allowed_ptr (int ,int ) ;
 scalar_t__ shutdown ;
 int shutdown_wq ;
 int smp_mb () ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (struct rcu_head*,int ) ;
 int stub4 () ;
 int stub5 () ;
 int stub6 () ;
 int stub7 () ;
 int stub8 () ;
 int stub9 () ;
 scalar_t__ system_state ;
 void* t_rcu_perf_writer_finished ;
 void* t_rcu_perf_writer_started ;
 int * this_cpu_ptr (int *) ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;
 int udelay (scalar_t__) ;
 int wake_up (int *) ;
 void*** writer_durations ;
 scalar_t__ writer_holdoff ;
 int* writer_n_durations ;

__attribute__((used)) static int
rcu_perf_writer(void *arg)
{
 int i = 0;
 int i_max;
 long me = (long)arg;
 struct rcu_head *rhp = ((void*)0);
 struct sched_param sp;
 bool started = 0, done = 0, alldone = 0;
 u64 t;
 u64 *wdp;
 u64 *wdpp = writer_durations[me];

 VERBOSE_PERFOUT_STRING("rcu_perf_writer task started");
 WARN_ON(!wdpp);
 set_cpus_allowed_ptr(current, cpumask_of(me % nr_cpu_ids));
 sp.sched_priority = 1;
 sched_setscheduler_nocheck(current, SCHED_FIFO, &sp);

 if (holdoff)
  schedule_timeout_uninterruptible(holdoff * HZ);






 while (!gp_exp && system_state != SYSTEM_RUNNING)
  schedule_timeout_uninterruptible(1);

 t = ktime_get_mono_fast_ns();
 if (atomic_inc_return(&n_rcu_perf_writer_started) >= nrealwriters) {
  t_rcu_perf_writer_started = t;
  if (gp_exp) {
   b_rcu_perf_writer_started =
    cur_ops->exp_completed() / 2;
  } else {
   b_rcu_perf_writer_started = cur_ops->get_gp_seq();
  }
 }

 do {
  if (writer_holdoff)
   udelay(writer_holdoff);
  wdp = &wdpp[i];
  *wdp = ktime_get_mono_fast_ns();
  if (gp_async) {
retry:
   if (!rhp)
    rhp = kmalloc(sizeof(*rhp), GFP_KERNEL);
   if (rhp && atomic_read(this_cpu_ptr(&n_async_inflight)) < gp_async_max) {
    rcu_perf_writer_state = RTWS_ASYNC;
    atomic_inc(this_cpu_ptr(&n_async_inflight));
    cur_ops->async(rhp, rcu_perf_async_cb);
    rhp = ((void*)0);
   } else if (!kthread_should_stop()) {
    rcu_perf_writer_state = RTWS_BARRIER;
    cur_ops->gp_barrier();
    goto retry;
   } else {
    kfree(rhp);
   }
  } else if (gp_exp) {
   rcu_perf_writer_state = RTWS_EXP_SYNC;
   cur_ops->exp_sync();
  } else {
   rcu_perf_writer_state = RTWS_SYNC;
   cur_ops->sync();
  }
  rcu_perf_writer_state = RTWS_IDLE;
  t = ktime_get_mono_fast_ns();
  *wdp = t - *wdp;
  i_max = i;
  if (!started &&
      atomic_read(&n_rcu_perf_writer_started) >= nrealwriters)
   started = 1;
  if (!done && i >= MIN_MEAS) {
   done = 1;
   sp.sched_priority = 0;
   sched_setscheduler_nocheck(current,
         SCHED_NORMAL, &sp);
   pr_alert("%s%s rcu_perf_writer %ld has %d measurements\n",
     perf_type, PERF_FLAG, me, MIN_MEAS);
   if (atomic_inc_return(&n_rcu_perf_writer_finished) >=
       nrealwriters) {
    schedule_timeout_interruptible(10);
    rcu_ftrace_dump(DUMP_ALL);
    PERFOUT_STRING("Test complete");
    t_rcu_perf_writer_finished = t;
    if (gp_exp) {
     b_rcu_perf_writer_finished =
      cur_ops->exp_completed() / 2;
    } else {
     b_rcu_perf_writer_finished =
      cur_ops->get_gp_seq();
    }
    if (shutdown) {
     smp_mb();
     wake_up(&shutdown_wq);
    }
   }
  }
  if (done && !alldone &&
      atomic_read(&n_rcu_perf_writer_finished) >= nrealwriters)
   alldone = 1;
  if (started && !alldone && i < MAX_MEAS - 1)
   i++;
  rcu_perf_wait_shutdown();
 } while (!torture_must_stop());
 if (gp_async) {
  rcu_perf_writer_state = RTWS_BARRIER;
  cur_ops->gp_barrier();
 }
 rcu_perf_writer_state = RTWS_STOPPING;
 writer_n_durations[me] = i_max;
 torture_kthread_stopping("rcu_perf_writer");
 return 0;
}
