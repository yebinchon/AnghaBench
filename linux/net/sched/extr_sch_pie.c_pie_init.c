
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int limit; } ;
struct pie_sched_data {int adapt_timer; struct Qdisc* sch; TYPE_1__ params; int vars; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int limit; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pie_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int pie_params_init (TYPE_1__*) ;
 int pie_timer ;
 int pie_vars_init (int *) ;
 struct pie_sched_data* qdisc_priv (struct Qdisc*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int pie_init(struct Qdisc *sch, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 struct pie_sched_data *q = qdisc_priv(sch);

 pie_params_init(&q->params);
 pie_vars_init(&q->vars);
 sch->limit = q->params.limit;

 q->sch = sch;
 timer_setup(&q->adapt_timer, pie_timer, 0);

 if (opt) {
  int err = pie_change(sch, opt, extack);

  if (err)
   return err;
 }

 mod_timer(&q->adapt_timer, jiffies + HZ / 2);
 return 0;
}
