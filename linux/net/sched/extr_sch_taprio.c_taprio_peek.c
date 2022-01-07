
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taprio_sched {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;
struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* stub1 (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *taprio_peek(struct Qdisc *sch)
{
 struct taprio_sched *q = qdisc_priv(sch);

 return q->peek(sch);
}
