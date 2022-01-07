
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rb_node {int dummy; } ;
struct etf_sched_data {int head; } ;
struct Qdisc {int dummy; } ;


 struct etf_sched_data* qdisc_priv (struct Qdisc*) ;
 struct rb_node* rb_first_cached (int *) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;

__attribute__((used)) static struct sk_buff *etf_peek_timesortedlist(struct Qdisc *sch)
{
 struct etf_sched_data *q = qdisc_priv(sch);
 struct rb_node *p;

 p = rb_first_cached(&q->head);
 if (!p)
  return ((void*)0);

 return rb_to_skb(p);
}
