
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skbprio_sched_data {int lowest_prio; scalar_t__ highest_prio; int qstats; int * qdiscs; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int limit; } ;


 int SKBPRIO_MAX_PRIORITY ;
 int __skb_queue_head_init (int *) ;
 int memset (int *,int ,int) ;
 struct skbprio_sched_data* qdisc_priv (struct Qdisc*) ;
 int skbprio_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;

__attribute__((used)) static int skbprio_init(struct Qdisc *sch, struct nlattr *opt,
   struct netlink_ext_ack *extack)
{
 struct skbprio_sched_data *q = qdisc_priv(sch);
 int prio;


 for (prio = 0; prio < SKBPRIO_MAX_PRIORITY; prio++)
  __skb_queue_head_init(&q->qdiscs[prio]);

 memset(&q->qstats, 0, sizeof(q->qstats));
 q->highest_prio = 0;
 q->lowest_prio = SKBPRIO_MAX_PRIORITY - 1;
 sch->limit = 64;
 if (!opt)
  return 0;

 return skbprio_change(sch, opt, extack);
}
