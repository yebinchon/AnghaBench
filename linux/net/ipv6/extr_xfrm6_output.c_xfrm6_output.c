
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int dev; } ;


 TYPE_2__* IP6CB (struct sk_buff*) ;
 int IP6SKB_REROUTED ;
 int NFPROTO_IPV6 ;
 int NF_HOOK_COND (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,int ,int ,int) ;
 int NF_INET_POST_ROUTING ;
 int __xfrm6_output ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

int xfrm6_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 return NF_HOOK_COND(NFPROTO_IPV6, NF_INET_POST_ROUTING,
       net, sk, skb, ((void*)0), skb_dst(skb)->dev,
       __xfrm6_output,
       !(IP6CB(skb)->flags & IP6SKB_REROUTED));
}
