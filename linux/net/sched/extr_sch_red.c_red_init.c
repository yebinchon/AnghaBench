
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct red_sched_data {int adapt_timer; struct Qdisc* sch; int * qdisc; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;


 int noop_qdisc ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int red_adaptative_timer ;
 int red_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int red_init(struct Qdisc *sch, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 struct red_sched_data *q = qdisc_priv(sch);

 q->qdisc = &noop_qdisc;
 q->sch = sch;
 timer_setup(&q->adapt_timer, red_adaptative_timer, 0);
 return red_change(sch, opt, extack);
}
