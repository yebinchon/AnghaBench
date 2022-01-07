
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 struct sk_buff* hhf_dequeue (struct Qdisc*) ;
 int rtnl_kfree_skbs (struct sk_buff*,struct sk_buff*) ;

__attribute__((used)) static void hhf_reset(struct Qdisc *sch)
{
 struct sk_buff *skb;

 while ((skb = hhf_dequeue(sch)) != ((void*)0))
  rtnl_kfree_skbs(skb, skb);
}
