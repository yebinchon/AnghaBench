
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int ERESTARTSYS ;
 scalar_t__ __fatal_signal_pending (int ) ;
 int current ;
 int freezable_schedule_timeout_interruptible (int ) ;
 int might_sleep () ;
 int nfs4_update_delay (long*) ;
 int signal_pending (int ) ;

__attribute__((used)) static int nfs4_delay_interruptible(long *timeout)
{
 might_sleep();

 freezable_schedule_timeout_interruptible(nfs4_update_delay(timeout));
 if (!signal_pending(current))
  return 0;
 return __fatal_signal_pending(current) ? -EINTR :-ERESTARTSYS;
}
