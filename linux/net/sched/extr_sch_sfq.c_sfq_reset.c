
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 int rtnl_kfree_skbs (struct sk_buff*,struct sk_buff*) ;
 struct sk_buff* sfq_dequeue (struct Qdisc*) ;

__attribute__((used)) static void
sfq_reset(struct Qdisc *sch)
{
 struct sk_buff *skb;

 while ((skb = sfq_dequeue(sch)) != ((void*)0))
  rtnl_kfree_skbs(skb, skb);
}
