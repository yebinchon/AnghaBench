
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct choke_sched_data {size_t head; size_t tail; struct sk_buff** tab; } ;
struct Qdisc {int dummy; } ;


 struct choke_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *choke_peek_head(struct Qdisc *sch)
{
 struct choke_sched_data *q = qdisc_priv(sch);

 return (q->head != q->tail) ? q->tab[q->head] : ((void*)0);
}
