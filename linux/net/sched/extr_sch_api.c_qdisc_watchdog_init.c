
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdisc_watchdog {int dummy; } ;
struct Qdisc {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int qdisc_watchdog_init_clockid (struct qdisc_watchdog*,struct Qdisc*,int ) ;

void qdisc_watchdog_init(struct qdisc_watchdog *wd, struct Qdisc *qdisc)
{
 qdisc_watchdog_init_clockid(wd, qdisc, CLOCK_MONOTONIC);
}
