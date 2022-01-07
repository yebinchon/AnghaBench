
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; int rbnode; struct sk_buff* next; } ;
struct fq_flow {int t_root; struct sk_buff* head; } ;
struct Qdisc {int dummy; } ;


 int qdisc_dev (struct Qdisc*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void fq_erase_head(struct Qdisc *sch, struct fq_flow *flow,
     struct sk_buff *skb)
{
 if (skb == flow->head) {
  flow->head = skb->next;
 } else {
  rb_erase(&skb->rbnode, &flow->t_root);
  skb->dev = qdisc_dev(sch);
 }
}
