
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netem_sched_data {int loss_model; int watchdog; } ;
struct Qdisc {int dummy; } ;


 int CLG_RANDOM ;
 int EINVAL ;
 int netem_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int pr_info (char*) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_init (int *,struct Qdisc*) ;

__attribute__((used)) static int netem_init(struct Qdisc *sch, struct nlattr *opt,
        struct netlink_ext_ack *extack)
{
 struct netem_sched_data *q = qdisc_priv(sch);
 int ret;

 qdisc_watchdog_init(&q->watchdog, sch);

 if (!opt)
  return -EINVAL;

 q->loss_model = CLG_RANDOM;
 ret = netem_change(sch, opt, extack);
 if (ret)
  pr_info("netem: change failed\n");
 return ret;
}
