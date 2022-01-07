
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 int NFPROTO_DECNET ;
 int NF_DN_LOCAL_IN ;
 int NF_HOOK (int ,int ,int *,int *,struct sk_buff*,int ,int *,int ) ;
 int dn_nsp_rx_packet ;
 int init_net ;

int dn_nsp_rx(struct sk_buff *skb)
{
 return NF_HOOK(NFPROTO_DECNET, NF_DN_LOCAL_IN,
         &init_net, ((void*)0), skb, skb->dev, ((void*)0),
         dn_nsp_rx_packet);
}
