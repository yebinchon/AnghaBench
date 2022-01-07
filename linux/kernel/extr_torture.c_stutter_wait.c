
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int READ_ONCE (int ) ;
 int cond_resched () ;
 int cond_resched_tasks_rcu_qs () ;
 int round_jiffies_relative (int ) ;
 int schedule_timeout_interruptible (int) ;
 int stutter_pause_test ;
 int torture_shutdown_absorb (char const*) ;

bool stutter_wait(const char *title)
{
 int spt;
 bool ret = 0;

 cond_resched_tasks_rcu_qs();
 spt = READ_ONCE(stutter_pause_test);
 for (; spt; spt = READ_ONCE(stutter_pause_test)) {
  ret = 1;
  if (spt == 1) {
   schedule_timeout_interruptible(1);
  } else if (spt == 2) {
   while (READ_ONCE(stutter_pause_test))
    cond_resched();
  } else {
   schedule_timeout_interruptible(round_jiffies_relative(HZ));
  }
  torture_shutdown_absorb(title);
 }
 return ret;
}
