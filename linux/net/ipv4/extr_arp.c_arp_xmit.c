
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int NFPROTO_ARP ;
 int NF_ARP_OUT ;
 int NF_HOOK (int ,int ,int ,int *,struct sk_buff*,int *,int ,int ) ;
 int arp_xmit_finish ;
 int dev_net (int ) ;

void arp_xmit(struct sk_buff *skb)
{

 NF_HOOK(NFPROTO_ARP, NF_ARP_OUT,
  dev_net(skb->dev), ((void*)0), skb, ((void*)0), skb->dev,
  arp_xmit_finish);
}
