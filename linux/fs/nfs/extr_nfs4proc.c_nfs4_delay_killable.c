
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int __fatal_signal_pending (int ) ;
 int current ;
 int freezable_schedule_timeout_killable_unsafe (int ) ;
 int might_sleep () ;
 int nfs4_update_delay (long*) ;

__attribute__((used)) static int nfs4_delay_killable(long *timeout)
{
 might_sleep();

 freezable_schedule_timeout_killable_unsafe(
  nfs4_update_delay(timeout));
 if (!__fatal_signal_pending(current))
  return 0;
 return -EINTR;
}
