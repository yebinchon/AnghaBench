
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int q; } ;
struct atm_qdisc_data {TYPE_1__ link; int task; } ;
struct TYPE_4__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; } ;


 int pr_debug (char*,struct Qdisc*,struct atm_qdisc_data*) ;
 struct sk_buff* qdisc_dequeue_peeked (int ) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static struct sk_buff *atm_tc_dequeue(struct Qdisc *sch)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct sk_buff *skb;

 pr_debug("atm_tc_dequeue(sch %p,[qdisc %p])\n", sch, p);
 tasklet_schedule(&p->task);
 skb = qdisc_dequeue_peeked(p->link.q);
 if (skb)
  sch->q.qlen--;
 return skb;
}
