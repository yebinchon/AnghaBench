
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 scalar_t__ FULLSTOP_DONTSTOP ;
 int FULLSTOP_SHUTDOWN ;
 int NOTIFY_DONE ;
 scalar_t__ READ_ONCE (int ) ;
 int VERBOSE_TOROUT_STRING (char*) ;
 int WRITE_ONCE (int ,int ) ;
 int fullstop ;
 int fullstop_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;

__attribute__((used)) static int torture_shutdown_notify(struct notifier_block *unused1,
       unsigned long unused2, void *unused3)
{
 mutex_lock(&fullstop_mutex);
 if (READ_ONCE(fullstop) == FULLSTOP_DONTSTOP) {
  VERBOSE_TOROUT_STRING("Unscheduled system shutdown detected");
  WRITE_ONCE(fullstop, FULLSTOP_SHUTDOWN);
 } else {
  pr_warn("Concurrent rmmod and shutdown illegal!\n");
 }
 mutex_unlock(&fullstop_mutex);
 return NOTIFY_DONE;
}
