
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int NFPROTO_IPV6 ;
 int NF_HOOK (int ,int ,int ,int *,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_LOCAL_IN ;
 int dev_net (int ) ;
 int ip6_input_finish ;

int ip6_input(struct sk_buff *skb)
{
 return NF_HOOK(NFPROTO_IPV6, NF_INET_LOCAL_IN,
         dev_net(skb->dev), ((void*)0), skb, skb->dev, ((void*)0),
         ip6_input_finish);
}
