
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int VERBOSE_TOROUT_STRING (char*) ;
 int lock_torture_stats_print () ;
 int schedule_timeout_interruptible (int) ;
 int stat_interval ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;
 int torture_shutdown_absorb (char*) ;

__attribute__((used)) static int lock_torture_stats(void *arg)
{
 VERBOSE_TOROUT_STRING("lock_torture_stats task started");
 do {
  schedule_timeout_interruptible(stat_interval * HZ);
  lock_torture_stats_print();
  torture_shutdown_absorb("lock_torture_stats");
 } while (!torture_must_stop());
 torture_kthread_stopping("lock_torture_stats");
 return 0;
}
