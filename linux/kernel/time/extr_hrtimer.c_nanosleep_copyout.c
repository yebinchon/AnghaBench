
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct TYPE_2__ {int type; int rmtp; int compat_rmtp; } ;
struct restart_block {TYPE_1__ nanosleep; } ;


 int BUG () ;
 int EFAULT ;
 int ERESTART_RESTARTBLOCK ;


 int put_old_timespec32 (struct timespec64*,int ) ;
 int put_timespec64 (struct timespec64*,int ) ;

int nanosleep_copyout(struct restart_block *restart, struct timespec64 *ts)
{
 switch(restart->nanosleep.type) {






 case 128:
  if (put_timespec64(ts, restart->nanosleep.rmtp))
   return -EFAULT;
  break;
 default:
  BUG();
 }
 return -ERESTART_RESTARTBLOCK;
}
