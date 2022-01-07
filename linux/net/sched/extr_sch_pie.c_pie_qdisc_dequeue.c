
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 int pie_process_dequeue (struct Qdisc*,struct sk_buff*) ;
 struct sk_buff* qdisc_dequeue_head (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *pie_qdisc_dequeue(struct Qdisc *sch)
{
 struct sk_buff *skb = qdisc_dequeue_head(sch);

 if (!skb)
  return ((void*)0);

 pie_process_dequeue(sch, skb);
 return skb;
}
