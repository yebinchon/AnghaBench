
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dev; scalar_t__ tstamp; } ;
struct net {int dummy; } ;


 int NFPROTO_BRIDGE ;
 int NF_BR_POST_ROUTING ;
 int NF_HOOK (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,int ,int ) ;
 int br_dev_queue_push_xmit ;

int br_forward_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 skb->tstamp = 0;
 return NF_HOOK(NFPROTO_BRIDGE, NF_BR_POST_ROUTING,
         net, sk, skb, ((void*)0), skb->dev,
         br_dev_queue_push_xmit);

}
