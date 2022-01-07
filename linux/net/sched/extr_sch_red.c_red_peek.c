
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct red_sched_data {struct Qdisc* qdisc; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;


 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *red_peek(struct Qdisc *sch)
{
 struct red_sched_data *q = qdisc_priv(sch);
 struct Qdisc *child = q->qdisc;

 return child->ops->peek(child);
}
