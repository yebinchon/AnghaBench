
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ pkt_type; int dev; int priority; int sk; } ;
struct TYPE_5__ {int dev; scalar_t__ header_len; } ;
struct rtable {TYPE_2__ dst; scalar_t__ rt_uses_gateway; } ;
struct TYPE_4__ {scalar_t__ sysctl_ip_fwd_update_priority; } ;
struct net {TYPE_1__ ipv4; } ;
struct iphdr {int ttl; int tos; } ;
struct ip_options {int srr; scalar_t__ is_strictroute; scalar_t__ router_alert; } ;
struct TYPE_6__ {int flags; struct ip_options opt; } ;


 int ICMP_DEST_UNREACH ;
 int ICMP_EXC_TTL ;
 int ICMP_FRAG_NEEDED ;
 int ICMP_SR_FAILED ;
 int ICMP_TIME_EXCEEDED ;
 TYPE_3__* IPCB (struct sk_buff*) ;
 int IPSKB_DOREDIRECT ;
 int IPSKB_FORWARDED ;
 int IPSTATS_MIB_FRAGFAILS ;
 int IPSTATS_MIB_INHDRERRORS ;
 int IP_INC_STATS (struct net*,int ) ;
 scalar_t__ LL_RESERVED_SPACE (int ) ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int NFPROTO_IPV4 ;
 int NF_HOOK (int ,int ,struct net*,int *,struct sk_buff*,int ,int ,int ) ;
 int NF_INET_FORWARD ;
 scalar_t__ PACKET_HOST ;
 int XFRM_POLICY_FWD ;
 int __IP_INC_STATS (struct net*,int ) ;
 struct net* dev_net (int ) ;
 int htonl (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ ip_call_ra_chain (struct sk_buff*) ;
 int ip_decrease_ttl (struct iphdr*) ;
 int ip_dst_mtu_maybe_forward (TYPE_2__*,int) ;
 scalar_t__ ip_exceeds_mtu (struct sk_buff*,int ) ;
 int ip_forward_finish ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_rt_send_redirect (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int rt_tos2priority (int ) ;
 scalar_t__ skb_cow (struct sk_buff*,scalar_t__) ;
 int skb_forward_csum (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 int skb_sec_path (struct sk_buff*) ;
 scalar_t__ skb_warn_if_lro (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;
 int xfrm4_policy_check (int *,int ,struct sk_buff*) ;
 int xfrm4_route_forward (struct sk_buff*) ;

int ip_forward(struct sk_buff *skb)
{
 u32 mtu;
 struct iphdr *iph;
 struct rtable *rt;
 struct ip_options *opt = &(IPCB(skb)->opt);
 struct net *net;


 if (skb->pkt_type != PACKET_HOST)
  goto drop;

 if (unlikely(skb->sk))
  goto drop;

 if (skb_warn_if_lro(skb))
  goto drop;

 if (!xfrm4_policy_check(((void*)0), XFRM_POLICY_FWD, skb))
  goto drop;

 if (IPCB(skb)->opt.router_alert && ip_call_ra_chain(skb))
  return NET_RX_SUCCESS;

 skb_forward_csum(skb);
 net = dev_net(skb->dev);






 if (ip_hdr(skb)->ttl <= 1)
  goto too_many_hops;

 if (!xfrm4_route_forward(skb))
  goto drop;

 rt = skb_rtable(skb);

 if (opt->is_strictroute && rt->rt_uses_gateway)
  goto sr_failed;

 IPCB(skb)->flags |= IPSKB_FORWARDED;
 mtu = ip_dst_mtu_maybe_forward(&rt->dst, 1);
 if (ip_exceeds_mtu(skb, mtu)) {
  IP_INC_STATS(net, IPSTATS_MIB_FRAGFAILS);
  icmp_send(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
     htonl(mtu));
  goto drop;
 }


 if (skb_cow(skb, LL_RESERVED_SPACE(rt->dst.dev)+rt->dst.header_len))
  goto drop;
 iph = ip_hdr(skb);


 ip_decrease_ttl(iph);





 if (IPCB(skb)->flags & IPSKB_DOREDIRECT && !opt->srr &&
     !skb_sec_path(skb))
  ip_rt_send_redirect(skb);

 if (net->ipv4.sysctl_ip_fwd_update_priority)
  skb->priority = rt_tos2priority(iph->tos);

 return NF_HOOK(NFPROTO_IPV4, NF_INET_FORWARD,
         net, ((void*)0), skb, skb->dev, rt->dst.dev,
         ip_forward_finish);

sr_failed:



  icmp_send(skb, ICMP_DEST_UNREACH, ICMP_SR_FAILED, 0);
  goto drop;

too_many_hops:

 __IP_INC_STATS(net, IPSTATS_MIB_INHDRERRORS);
 icmp_send(skb, ICMP_TIME_EXCEEDED, ICMP_EXC_TTL, 0);
drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
