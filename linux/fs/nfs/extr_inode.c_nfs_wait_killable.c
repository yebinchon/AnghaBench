
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERESTARTSYS ;
 int current ;
 int freezable_schedule_unsafe () ;
 scalar_t__ signal_pending_state (int,int ) ;

__attribute__((used)) static int nfs_wait_killable(int mode)
{
 freezable_schedule_unsafe();
 if (signal_pending_state(mode, current))
  return -ERESTARTSYS;
 return 0;
}
