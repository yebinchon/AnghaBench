
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 int NET_XMIT_CN ;
 int __qdisc_drop (struct sk_buff*,struct sk_buff**) ;

__attribute__((used)) static int noop_enqueue(struct sk_buff *skb, struct Qdisc *qdisc,
   struct sk_buff **to_free)
{
 __qdisc_drop(skb, to_free);
 return NET_XMIT_CN;
}
