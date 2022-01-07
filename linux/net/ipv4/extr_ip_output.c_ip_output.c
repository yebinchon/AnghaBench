
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int protocol; struct net_device* dev; int len; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct net_device* dev; } ;


 int ETH_P_IP ;
 TYPE_2__* IPCB (struct sk_buff*) ;
 int IPSKB_REROUTED ;
 int IPSTATS_MIB_OUT ;
 int IP_UPD_PO_STATS (struct net*,int ,int ) ;
 int NFPROTO_IPV4 ;
 int NF_HOOK_COND (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,struct net_device*,int ,int) ;
 int NF_INET_POST_ROUTING ;
 int htons (int ) ;
 int ip_finish_output ;
 TYPE_1__* skb_dst (struct sk_buff*) ;

int ip_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct net_device *dev = skb_dst(skb)->dev;

 IP_UPD_PO_STATS(net, IPSTATS_MIB_OUT, skb->len);

 skb->dev = dev;
 skb->protocol = htons(ETH_P_IP);

 return NF_HOOK_COND(NFPROTO_IPV4, NF_INET_POST_ROUTING,
       net, sk, skb, ((void*)0), dev,
       ip_finish_output,
       !(IPCB(skb)->flags & IPSKB_REROUTED));
}
