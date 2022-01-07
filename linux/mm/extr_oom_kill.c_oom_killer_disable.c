
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int oom_killer_disabled ;
 int oom_killer_enable () ;
 int oom_lock ;
 int oom_victims ;
 int oom_victims_wait ;
 int pr_info (char*) ;
 long wait_event_interruptible_timeout (int ,int,long) ;

bool oom_killer_disable(signed long timeout)
{
 signed long ret;





 if (mutex_lock_killable(&oom_lock))
  return 0;
 oom_killer_disabled = 1;
 mutex_unlock(&oom_lock);

 ret = wait_event_interruptible_timeout(oom_victims_wait,
   !atomic_read(&oom_victims), timeout);
 if (ret <= 0) {
  oom_killer_enable();
  return 0;
 }
 pr_info("OOM killer disabled.\n");

 return 1;
}
