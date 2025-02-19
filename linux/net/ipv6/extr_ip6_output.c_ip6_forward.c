
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ pkt_type; int sk; TYPE_3__* dev; } ;
struct in6_addr {int dummy; } ;
struct rt6_info {int rt6i_flags; struct in6_addr rt6i_gateway; } ;
struct TYPE_9__ {int peers; TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {int hop_limit; int saddr; struct in6_addr daddr; } ;
struct inet_peer {int dummy; } ;
struct inet6_skb_parm {int flags; scalar_t__ iif; scalar_t__ srcrt; int ra; } ;
struct inet6_dev {int dummy; } ;
struct dst_entry {TYPE_3__* dev; } ;
struct TYPE_10__ {scalar_t__ ifindex; int hard_header_len; } ;
struct TYPE_8__ {scalar_t__ forwarding; scalar_t__ proxy_ndp; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ETIMEDOUT ;
 int HZ ;
 int ICMPV6_DEST_UNREACH ;
 int ICMPV6_EXC_HOPLIMIT ;
 int ICMPV6_NOT_NEIGHBOUR ;
 int ICMPV6_PKT_TOOBIG ;
 int ICMPV6_TIME_EXCEED ;
 struct inet6_skb_parm* IP6CB (struct sk_buff*) ;
 int IP6SKB_ROUTERALERT ;
 int IPSTATS_MIB_FRAGFAILS ;
 int IPSTATS_MIB_INADDRERRORS ;
 int IPSTATS_MIB_INDISCARDS ;
 int IPSTATS_MIB_INHDRERRORS ;
 int IPSTATS_MIB_INTOOBIGERRORS ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_LOOPBACK ;
 int IPV6_ADDR_MULTICAST ;
 scalar_t__ IPV6_MIN_MTU ;
 int NFPROTO_IPV6 ;
 int NF_HOOK (int ,int ,struct net*,int *,struct sk_buff*,TYPE_3__*,TYPE_3__*,int ) ;
 int NF_INET_FORWARD ;
 scalar_t__ PACKET_HOST ;
 int RTF_GATEWAY ;
 int XFRM_POLICY_FWD ;
 int __IP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 struct inet6_dev* __in6_dev_get_safely (TYPE_3__*) ;
 struct net* dev_net (TYPE_3__*) ;
 int icmpv6_send (struct sk_buff*,int ,int ,scalar_t__) ;
 struct inet_peer* inet_getpeer_v6 (int ,struct in6_addr*,int) ;
 scalar_t__ inet_peer_xrlim_allow (struct inet_peer*,int) ;
 int inet_putpeer (struct inet_peer*) ;
 scalar_t__ ip6_call_ra_chain (struct sk_buff*,int ) ;
 struct inet6_dev* ip6_dst_idev (struct dst_entry*) ;
 scalar_t__ ip6_dst_mtu_forward (struct dst_entry*) ;
 int ip6_forward_finish ;
 int ip6_forward_proxy_check (struct sk_buff*) ;
 int ip6_input (struct sk_buff*) ;
 scalar_t__ ip6_pkt_too_big (struct sk_buff*,scalar_t__) ;
 int ipv6_addr_type (int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int nd_tbl ;
 int ndisc_send_redirect (struct sk_buff*,struct in6_addr*) ;
 int ntohs (int ) ;
 scalar_t__ pneigh_lookup (int *,struct net*,struct in6_addr*,TYPE_3__*,int ) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_forward_csum (struct sk_buff*) ;
 int skb_sec_path (struct sk_buff*) ;
 scalar_t__ skb_warn_if_lro (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int xfrm6_policy_check (int *,int ,struct sk_buff*) ;
 int xfrm6_route_forward (struct sk_buff*) ;

int ip6_forward(struct sk_buff *skb)
{
 struct inet6_dev *idev = __in6_dev_get_safely(skb->dev);
 struct dst_entry *dst = skb_dst(skb);
 struct ipv6hdr *hdr = ipv6_hdr(skb);
 struct inet6_skb_parm *opt = IP6CB(skb);
 struct net *net = dev_net(dst->dev);
 u32 mtu;

 if (net->ipv6.devconf_all->forwarding == 0)
  goto error;

 if (skb->pkt_type != PACKET_HOST)
  goto drop;

 if (unlikely(skb->sk))
  goto drop;

 if (skb_warn_if_lro(skb))
  goto drop;

 if (!xfrm6_policy_check(((void*)0), XFRM_POLICY_FWD, skb)) {
  __IP6_INC_STATS(net, idev, IPSTATS_MIB_INDISCARDS);
  goto drop;
 }

 skb_forward_csum(skb);
 if (unlikely(opt->flags & IP6SKB_ROUTERALERT)) {
  if (ip6_call_ra_chain(skb, ntohs(opt->ra)))
   return 0;
 }




 if (hdr->hop_limit <= 1) {

  skb->dev = dst->dev;
  icmpv6_send(skb, ICMPV6_TIME_EXCEED, ICMPV6_EXC_HOPLIMIT, 0);
  __IP6_INC_STATS(net, idev, IPSTATS_MIB_INHDRERRORS);

  kfree_skb(skb);
  return -ETIMEDOUT;
 }


 if (net->ipv6.devconf_all->proxy_ndp &&
     pneigh_lookup(&nd_tbl, net, &hdr->daddr, skb->dev, 0)) {
  int proxied = ip6_forward_proxy_check(skb);
  if (proxied > 0)
   return ip6_input(skb);
  else if (proxied < 0) {
   __IP6_INC_STATS(net, idev, IPSTATS_MIB_INDISCARDS);
   goto drop;
  }
 }

 if (!xfrm6_route_forward(skb)) {
  __IP6_INC_STATS(net, idev, IPSTATS_MIB_INDISCARDS);
  goto drop;
 }
 dst = skb_dst(skb);





 if (IP6CB(skb)->iif == dst->dev->ifindex &&
     opt->srcrt == 0 && !skb_sec_path(skb)) {
  struct in6_addr *target = ((void*)0);
  struct inet_peer *peer;
  struct rt6_info *rt;






  rt = (struct rt6_info *) dst;
  if (rt->rt6i_flags & RTF_GATEWAY)
   target = &rt->rt6i_gateway;
  else
   target = &hdr->daddr;

  peer = inet_getpeer_v6(net->ipv6.peers, &hdr->daddr, 1);




  if (inet_peer_xrlim_allow(peer, 1*HZ))
   ndisc_send_redirect(skb, target);
  if (peer)
   inet_putpeer(peer);
 } else {
  int addrtype = ipv6_addr_type(&hdr->saddr);


  if (addrtype == IPV6_ADDR_ANY ||
      addrtype & (IPV6_ADDR_MULTICAST | IPV6_ADDR_LOOPBACK))
   goto error;
  if (addrtype & IPV6_ADDR_LINKLOCAL) {
   icmpv6_send(skb, ICMPV6_DEST_UNREACH,
        ICMPV6_NOT_NEIGHBOUR, 0);
   goto error;
  }
 }

 mtu = ip6_dst_mtu_forward(dst);
 if (mtu < IPV6_MIN_MTU)
  mtu = IPV6_MIN_MTU;

 if (ip6_pkt_too_big(skb, mtu)) {

  skb->dev = dst->dev;
  icmpv6_send(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
  __IP6_INC_STATS(net, idev, IPSTATS_MIB_INTOOBIGERRORS);
  __IP6_INC_STATS(net, ip6_dst_idev(dst),
    IPSTATS_MIB_FRAGFAILS);
  kfree_skb(skb);
  return -EMSGSIZE;
 }

 if (skb_cow(skb, dst->dev->hard_header_len)) {
  __IP6_INC_STATS(net, ip6_dst_idev(dst),
    IPSTATS_MIB_OUTDISCARDS);
  goto drop;
 }

 hdr = ipv6_hdr(skb);



 hdr->hop_limit--;

 return NF_HOOK(NFPROTO_IPV6, NF_INET_FORWARD,
         net, ((void*)0), skb, skb->dev, dst->dev,
         ip6_forward_finish);

error:
 __IP6_INC_STATS(net, idev, IPSTATS_MIB_INADDRERRORS);
drop:
 kfree_skb(skb);
 return -EINVAL;
}
