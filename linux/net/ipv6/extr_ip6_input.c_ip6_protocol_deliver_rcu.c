
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct inet6_protocol {int flags; int handler; } ;
struct inet6_dev {int dummy; } ;
struct TYPE_2__ {unsigned int nhoff; } ;


 int ICMPV6_PARAMPROB ;
 int ICMPV6_UNK_NEXTHDR ;
 int INDIRECT_CALL_2 (int ,int ,int ,struct sk_buff*) ;
 int INET6_PROTO_FINAL ;
 int INET6_PROTO_NOPOLICY ;
 TYPE_1__* IP6CB (struct sk_buff*) ;
 int IPSTATS_MIB_INDELIVERS ;
 int IPSTATS_MIB_INDISCARDS ;
 int IPSTATS_MIB_INUNKNOWNPROTOS ;
 int XFRM_POLICY_IN ;
 int __IP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int consume_skb (struct sk_buff*) ;
 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 int icmpv6_send (struct sk_buff*,int ,int ,unsigned int) ;
 int * inet6_protos ;
 int inet6_sdif (struct sk_buff*) ;
 struct inet6_dev* ip6_dst_idev (int ) ;
 scalar_t__ ipv6_addr_is_multicast (int *) ;
 int ipv6_chk_mcast_addr (struct net_device*,int *,int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_is_mld (struct sk_buff*,int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int pskb_pull (struct sk_buff*,int ) ;
 int raw6_local_deliver (struct sk_buff*,int) ;
 struct inet6_protocol* rcu_dereference (int ) ;
 int skb_dst (struct sk_buff*) ;
 int* skb_network_header (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 int skb_postpull_rcsum (struct sk_buff*,int*,int ) ;
 int skb_transport_offset (struct sk_buff*) ;
 int tcp_v6_rcv ;
 int udpv6_rcv ;
 scalar_t__ xfrm6_policy_check (int *,int ,struct sk_buff*) ;

void ip6_protocol_deliver_rcu(struct net *net, struct sk_buff *skb, int nexthdr,
         bool have_final)
{
 const struct inet6_protocol *ipprot;
 struct inet6_dev *idev;
 unsigned int nhoff;
 bool raw;





resubmit:
 idev = ip6_dst_idev(skb_dst(skb));
 nhoff = IP6CB(skb)->nhoff;
 if (!have_final) {
  if (!pskb_pull(skb, skb_transport_offset(skb)))
   goto discard;
  nexthdr = skb_network_header(skb)[nhoff];
 }

resubmit_final:
 raw = raw6_local_deliver(skb, nexthdr);
 ipprot = rcu_dereference(inet6_protos[nexthdr]);
 if (ipprot) {
  int ret;

  if (have_final) {
   if (!(ipprot->flags & INET6_PROTO_FINAL)) {





    goto discard;
   }
  } else if (ipprot->flags & INET6_PROTO_FINAL) {
   const struct ipv6hdr *hdr;
   int sdif = inet6_sdif(skb);
   struct net_device *dev;


   have_final = 1;




   nf_reset_ct(skb);

   skb_postpull_rcsum(skb, skb_network_header(skb),
        skb_network_header_len(skb));
   hdr = ipv6_hdr(skb);


   if (sdif) {
    dev = dev_get_by_index_rcu(net, sdif);
    if (!dev)
     goto discard;
   } else {
    dev = skb->dev;
   }

   if (ipv6_addr_is_multicast(&hdr->daddr) &&
       !ipv6_chk_mcast_addr(dev, &hdr->daddr,
       &hdr->saddr) &&
       !ipv6_is_mld(skb, nexthdr, skb_network_header_len(skb)))
    goto discard;
  }
  if (!(ipprot->flags & INET6_PROTO_NOPOLICY) &&
      !xfrm6_policy_check(((void*)0), XFRM_POLICY_IN, skb))
   goto discard;

  ret = INDIRECT_CALL_2(ipprot->handler, tcp_v6_rcv, udpv6_rcv,
          skb);
  if (ret > 0) {
   if (ipprot->flags & INET6_PROTO_FINAL) {





    nexthdr = ret;
    goto resubmit_final;
   } else {
    goto resubmit;
   }
  } else if (ret == 0) {
   __IP6_INC_STATS(net, idev, IPSTATS_MIB_INDELIVERS);
  }
 } else {
  if (!raw) {
   if (xfrm6_policy_check(((void*)0), XFRM_POLICY_IN, skb)) {
    __IP6_INC_STATS(net, idev,
      IPSTATS_MIB_INUNKNOWNPROTOS);
    icmpv6_send(skb, ICMPV6_PARAMPROB,
         ICMPV6_UNK_NEXTHDR, nhoff);
   }
   kfree_skb(skb);
  } else {
   __IP6_INC_STATS(net, idev, IPSTATS_MIB_INDELIVERS);
   consume_skb(skb);
  }
 }
 return;

discard:
 __IP6_INC_STATS(net, idev, IPSTATS_MIB_INDISCARDS);
 kfree_skb(skb);
}
