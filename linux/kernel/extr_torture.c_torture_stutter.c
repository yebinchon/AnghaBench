
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int VERBOSE_TOROUT_STRING (char*) ;
 int WRITE_ONCE (int ,int) ;
 int schedule_timeout_interruptible (int) ;
 int stutter ;
 int stutter_gap ;
 int stutter_pause_test ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;
 int torture_shutdown_absorb (char*) ;

__attribute__((used)) static int torture_stutter(void *arg)
{
 int wtime;

 VERBOSE_TOROUT_STRING("torture_stutter task started");
 do {
  if (!torture_must_stop() && stutter > 1) {
   wtime = stutter;
   if (stutter > HZ + 1) {
    WRITE_ONCE(stutter_pause_test, 1);
    wtime = stutter - HZ - 1;
    schedule_timeout_interruptible(wtime);
    wtime = HZ + 1;
   }
   WRITE_ONCE(stutter_pause_test, 2);
   schedule_timeout_interruptible(wtime);
  }
  WRITE_ONCE(stutter_pause_test, 0);
  if (!torture_must_stop())
   schedule_timeout_interruptible(stutter_gap);
  torture_shutdown_absorb("torture_stutter");
 } while (!torture_must_stop());
 torture_kthread_stopping("torture_stutter");
 return 0;
}
