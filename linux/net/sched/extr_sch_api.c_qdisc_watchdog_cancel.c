
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_watchdog {int timer; } ;


 int hrtimer_cancel (int *) ;

void qdisc_watchdog_cancel(struct qdisc_watchdog *wd)
{
 hrtimer_cancel(&wd->timer);
}
