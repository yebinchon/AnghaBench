
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbf_sched_data {int t_c; int * qdisc; int watchdog; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;


 int EINVAL ;
 int ktime_get_ns () ;
 int noop_qdisc ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;
 int tbf_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;

__attribute__((used)) static int tbf_init(struct Qdisc *sch, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 struct tbf_sched_data *q = qdisc_priv(sch);

 qdisc_watchdog_init(&q->watchdog, sch);
 q->qdisc = &noop_qdisc;

 if (!opt)
  return -EINVAL;

 q->t_c = ktime_get_ns();

 return tbf_change(sch, opt, extack);
}
