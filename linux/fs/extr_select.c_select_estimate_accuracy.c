
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct timespec64 {int dummy; } ;
struct TYPE_3__ {scalar_t__ timer_slack_ns; } ;


 scalar_t__ __estimate_accuracy (struct timespec64*) ;
 TYPE_1__* current ;
 int ktime_get_ts64 (struct timespec64*) ;
 scalar_t__ rt_task (TYPE_1__*) ;
 struct timespec64 timespec64_sub (struct timespec64,struct timespec64) ;

u64 select_estimate_accuracy(struct timespec64 *tv)
{
 u64 ret;
 struct timespec64 now;





 if (rt_task(current))
  return 0;

 ktime_get_ts64(&now);
 now = timespec64_sub(*tv, now);
 ret = __estimate_accuracy(&now);
 if (ret < current->timer_slack_ns)
  return current->timer_slack_ns;
 return ret;
}
