
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 int ndisc_recv_ns (struct sk_buff*) ;

__attribute__((used)) static void pndisc_redo(struct sk_buff *skb)
{
 ndisc_recv_ns(skb);
 kfree_skb(skb);
}
