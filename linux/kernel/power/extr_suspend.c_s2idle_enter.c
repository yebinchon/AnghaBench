
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PM_SUSPEND_TO_IDLE ;
 scalar_t__ S2IDLE_STATE_ENTER ;
 scalar_t__ S2IDLE_STATE_NONE ;
 scalar_t__ S2IDLE_STATE_WAKE ;
 int TPS (char*) ;
 int cpuidle_pause () ;
 int cpuidle_resume () ;
 int get_online_cpus () ;
 scalar_t__ pm_wakeup_pending () ;
 int put_online_cpus () ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int s2idle_lock ;
 scalar_t__ s2idle_state ;
 int s2idle_wait_head ;
 int swait_event_exclusive (int ,int) ;
 int trace_suspend_resume (int ,int ,int) ;
 int wake_up_all_idle_cpus () ;

__attribute__((used)) static void s2idle_enter(void)
{
 trace_suspend_resume(TPS("machine_suspend"), PM_SUSPEND_TO_IDLE, 1);

 raw_spin_lock_irq(&s2idle_lock);
 if (pm_wakeup_pending())
  goto out;

 s2idle_state = S2IDLE_STATE_ENTER;
 raw_spin_unlock_irq(&s2idle_lock);

 get_online_cpus();
 cpuidle_resume();


 wake_up_all_idle_cpus();

 swait_event_exclusive(s2idle_wait_head,
      s2idle_state == S2IDLE_STATE_WAKE);

 cpuidle_pause();
 put_online_cpus();

 raw_spin_lock_irq(&s2idle_lock);

 out:
 s2idle_state = S2IDLE_STATE_NONE;
 raw_spin_unlock_irq(&s2idle_lock);

 trace_suspend_resume(TPS("machine_suspend"), PM_SUSPEND_TO_IDLE, 0);
}
