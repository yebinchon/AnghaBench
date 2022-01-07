
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULLSTOP_RMMOD ;
 scalar_t__ FULLSTOP_SHUTDOWN ;
 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int ) ;
 int fullstop ;
 int fullstop_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;
 int schedule_timeout_uninterruptible (int) ;
 int torture_onoff_cleanup () ;
 int torture_shuffle_cleanup () ;
 int torture_shutdown_cleanup () ;
 int torture_stutter_cleanup () ;

bool torture_cleanup_begin(void)
{
 mutex_lock(&fullstop_mutex);
 if (READ_ONCE(fullstop) == FULLSTOP_SHUTDOWN) {
  pr_warn("Concurrent rmmod and shutdown illegal!\n");
  mutex_unlock(&fullstop_mutex);
  schedule_timeout_uninterruptible(10);
  return 1;
 }
 WRITE_ONCE(fullstop, FULLSTOP_RMMOD);
 mutex_unlock(&fullstop_mutex);
 torture_shutdown_cleanup();
 torture_shuffle_cleanup();
 torture_stutter_cleanup();
 torture_onoff_cleanup();
 return 0;
}
