
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct qdisc_watchdog {struct Qdisc* qdisc; TYPE_1__ timer; } ;
struct Qdisc {int dummy; } ;
typedef int clockid_t ;


 int HRTIMER_MODE_ABS_PINNED ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int qdisc_watchdog ;

void qdisc_watchdog_init_clockid(struct qdisc_watchdog *wd, struct Qdisc *qdisc,
     clockid_t clockid)
{
 hrtimer_init(&wd->timer, clockid, HRTIMER_MODE_ABS_PINNED);
 wd->timer.function = qdisc_watchdog;
 wd->qdisc = qdisc;
}
