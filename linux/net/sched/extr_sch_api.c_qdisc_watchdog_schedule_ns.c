
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qdisc_watchdog {scalar_t__ last_expires; int timer; int qdisc; } ;
struct TYPE_2__ {int state; } ;


 int HRTIMER_MODE_ABS_PINNED ;
 int __QDISC_STATE_DEACTIVATED ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (scalar_t__) ;
 TYPE_1__* qdisc_root_sleeping (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void qdisc_watchdog_schedule_ns(struct qdisc_watchdog *wd, u64 expires)
{
 if (test_bit(__QDISC_STATE_DEACTIVATED,
       &qdisc_root_sleeping(wd->qdisc)->state))
  return;

 if (wd->last_expires == expires)
  return;

 wd->last_expires = expires;
 hrtimer_start(&wd->timer,
        ns_to_ktime(expires),
        HRTIMER_MODE_ABS_PINNED);
}
