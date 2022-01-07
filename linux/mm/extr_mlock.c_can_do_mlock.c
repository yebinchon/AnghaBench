
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_IPC_LOCK ;
 int RLIMIT_MEMLOCK ;
 scalar_t__ capable (int ) ;
 scalar_t__ rlimit (int ) ;

bool can_do_mlock(void)
{
 if (rlimit(RLIMIT_MEMLOCK) != 0)
  return 1;
 if (capable(CAP_IPC_LOCK))
  return 1;
 return 0;
}
