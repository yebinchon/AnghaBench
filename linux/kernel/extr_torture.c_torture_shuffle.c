
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VERBOSE_TOROUT_STRING (char*) ;
 int schedule_timeout_interruptible (int ) ;
 int shuffle_interval ;
 int torture_kthread_stopping (char*) ;
 int torture_must_stop () ;
 int torture_shuffle_tasks () ;
 int torture_shutdown_absorb (char*) ;

__attribute__((used)) static int torture_shuffle(void *arg)
{
 VERBOSE_TOROUT_STRING("torture_shuffle task started");
 do {
  schedule_timeout_interruptible(shuffle_interval);
  torture_shuffle_tasks();
  torture_shutdown_absorb("torture_shuffle");
 } while (!torture_must_stop());
 torture_kthread_stopping("torture_shuffle");
 return 0;
}
