
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct sock* v6_ctl_sk; } ;
struct net {TYPE_1__ dccp; } ;
struct ipv6hdr {int daddr; int saddr; } ;
struct flowi6 {int fl6_sport; int fl6_dport; int flowi6_oif; int flowi6_proto; int saddr; int daddr; } ;
struct dst_entry {int dummy; } ;
typedef int fl6 ;
struct TYPE_6__ {scalar_t__ dccph_type; int dccph_sport; int dccph_dport; int dccph_checksum; } ;
struct TYPE_5__ {int dev; } ;


 int DCCP_INC_STATS (int ) ;
 int DCCP_MIB_OUTRSTS ;
 int DCCP_MIB_OUTSEGS ;
 scalar_t__ DCCP_PKT_RESET ;
 int IPPROTO_DCCP ;
 int IS_ERR (struct dst_entry*) ;
 struct sk_buff* dccp_ctl_make_reset (struct sock*,struct sk_buff*) ;
 TYPE_3__* dccp_hdr (struct sk_buff*) ;
 int dccp_v6_csum_finish (struct sk_buff*,int *,int *) ;
 struct net* dev_net (int ) ;
 int flowi6_to_flowi (struct flowi6*) ;
 int inet6_iif (struct sk_buff*) ;
 struct dst_entry* ip6_dst_lookup_flow (struct sock*,struct flowi6*,int *) ;
 int ip6_xmit (struct sock*,struct sk_buff*,struct flowi6*,int ,int *,int ,int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_unicast_destination (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct flowi6*,int ,int) ;
 int security_skb_classify_flow (struct sk_buff*,int ) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;

__attribute__((used)) static void dccp_v6_ctl_send_reset(const struct sock *sk, struct sk_buff *rxskb)
{
 const struct ipv6hdr *rxip6h;
 struct sk_buff *skb;
 struct flowi6 fl6;
 struct net *net = dev_net(skb_dst(rxskb)->dev);
 struct sock *ctl_sk = net->dccp.v6_ctl_sk;
 struct dst_entry *dst;

 if (dccp_hdr(rxskb)->dccph_type == DCCP_PKT_RESET)
  return;

 if (!ipv6_unicast_destination(rxskb))
  return;

 skb = dccp_ctl_make_reset(ctl_sk, rxskb);
 if (skb == ((void*)0))
  return;

 rxip6h = ipv6_hdr(rxskb);
 dccp_hdr(skb)->dccph_checksum = dccp_v6_csum_finish(skb, &rxip6h->saddr,
           &rxip6h->daddr);

 memset(&fl6, 0, sizeof(fl6));
 fl6.daddr = rxip6h->saddr;
 fl6.saddr = rxip6h->daddr;

 fl6.flowi6_proto = IPPROTO_DCCP;
 fl6.flowi6_oif = inet6_iif(rxskb);
 fl6.fl6_dport = dccp_hdr(skb)->dccph_dport;
 fl6.fl6_sport = dccp_hdr(skb)->dccph_sport;
 security_skb_classify_flow(rxskb, flowi6_to_flowi(&fl6));


 dst = ip6_dst_lookup_flow(ctl_sk, &fl6, ((void*)0));
 if (!IS_ERR(dst)) {
  skb_dst_set(skb, dst);
  ip6_xmit(ctl_sk, skb, &fl6, 0, ((void*)0), 0, 0);
  DCCP_INC_STATS(DCCP_MIB_OUTSEGS);
  DCCP_INC_STATS(DCCP_MIB_OUTRSTS);
  return;
 }

 kfree_skb(skb);
}
