
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 int NET_XMIT_SUCCESS ;
 int __NET_XMIT_BYPASS ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;

__attribute__((used)) static int blackhole_enqueue(struct sk_buff *skb, struct Qdisc *sch,
        struct sk_buff **to_free)
{
 qdisc_drop(skb, sch, to_free);
 return NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
}
