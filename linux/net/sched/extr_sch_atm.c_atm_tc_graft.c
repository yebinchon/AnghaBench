
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct atm_qdisc_data {int dummy; } ;
struct atm_flow_data {struct Qdisc* q; int list; } ;
struct Qdisc {int dummy; } ;


 int EINVAL ;
 scalar_t__ list_empty (int *) ;
 struct Qdisc noop_qdisc ;
 int pr_debug (char*,struct Qdisc*,struct atm_qdisc_data*,struct atm_flow_data*,struct Qdisc*,struct Qdisc**) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (struct Qdisc*) ;

__attribute__((used)) static int atm_tc_graft(struct Qdisc *sch, unsigned long arg,
   struct Qdisc *new, struct Qdisc **old,
   struct netlink_ext_ack *extack)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct atm_flow_data *flow = (struct atm_flow_data *)arg;

 pr_debug("atm_tc_graft(sch %p,[qdisc %p],flow %p,new %p,old %p)\n",
  sch, p, flow, new, old);
 if (list_empty(&flow->list))
  return -EINVAL;
 if (!new)
  new = &noop_qdisc;
 *old = flow->q;
 flow->q = new;
 if (*old)
  qdisc_reset(*old);
 return 0;
}
