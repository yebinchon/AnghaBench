
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int ICMPV6_PARAMPROB ;
 int icmp6_send (struct sk_buff*,int ,int ,int,int *) ;
 int kfree_skb (struct sk_buff*) ;

void icmpv6_param_prob(struct sk_buff *skb, u8 code, int pos)
{
 icmp6_send(skb, ICMPV6_PARAMPROB, code, pos, ((void*)0));
 kfree_skb(skb);
}
