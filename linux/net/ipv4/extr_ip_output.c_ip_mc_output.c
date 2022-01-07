
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int protocol; int len; } ;
struct TYPE_4__ {struct net_device* dev; } ;
struct rtable {int rt_flags; TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ ttl; } ;


 int ETH_P_IP ;
 int GFP_ATOMIC ;
 TYPE_3__* IPCB (struct sk_buff*) ;
 int IPSKB_FORWARDED ;
 int IPSKB_REROUTED ;
 int IPSTATS_MIB_OUT ;
 int IP_UPD_PO_STATS (struct net*,int ,int ) ;
 int NFPROTO_IPV4 ;
 int NF_HOOK (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,struct net_device*,int ) ;
 int NF_HOOK_COND (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,struct net_device*,int ,int) ;
 int NF_INET_POST_ROUTING ;
 int RTCF_BROADCAST ;
 int RTCF_LOCAL ;
 int RTCF_MULTICAST ;
 int htons (int ) ;
 int ip_finish_output ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int ip_mc_finish_output ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sk_mc_loop (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

int ip_mc_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct rtable *rt = skb_rtable(skb);
 struct net_device *dev = rt->dst.dev;




 IP_UPD_PO_STATS(net, IPSTATS_MIB_OUT, skb->len);

 skb->dev = dev;
 skb->protocol = htons(ETH_P_IP);





 if (rt->rt_flags&RTCF_MULTICAST) {
  if (sk_mc_loop(sk)
     ) {
   struct sk_buff *newskb = skb_clone(skb, GFP_ATOMIC);
   if (newskb)
    NF_HOOK(NFPROTO_IPV4, NF_INET_POST_ROUTING,
     net, sk, newskb, ((void*)0), newskb->dev,
     ip_mc_finish_output);
  }



  if (ip_hdr(skb)->ttl == 0) {
   kfree_skb(skb);
   return 0;
  }
 }

 if (rt->rt_flags&RTCF_BROADCAST) {
  struct sk_buff *newskb = skb_clone(skb, GFP_ATOMIC);
  if (newskb)
   NF_HOOK(NFPROTO_IPV4, NF_INET_POST_ROUTING,
    net, sk, newskb, ((void*)0), newskb->dev,
    ip_mc_finish_output);
 }

 return NF_HOOK_COND(NFPROTO_IPV4, NF_INET_POST_ROUTING,
       net, sk, skb, ((void*)0), skb->dev,
       ip_finish_output,
       !(IPCB(skb)->flags & IPSKB_REROUTED));
}
