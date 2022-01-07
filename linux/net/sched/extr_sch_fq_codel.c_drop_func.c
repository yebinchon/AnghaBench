
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct Qdisc {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 int qdisc_qstats_drop (struct Qdisc*) ;

__attribute__((used)) static void drop_func(struct sk_buff *skb, void *ctx)
{
 struct Qdisc *sch = ctx;

 kfree_skb(skb);
 qdisc_qstats_drop(sch);
}
