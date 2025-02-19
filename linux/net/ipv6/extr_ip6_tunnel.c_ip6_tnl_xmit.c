
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ protocol; unsigned int len; scalar_t__ sk; } ;
struct net_device_stats {int tx_carrier_errors; int collisions; } ;
struct net_device {unsigned int needed_headroom; } ;
struct net {int dummy; } ;
struct neighbour {int primary_key; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {scalar_t__ hop_limit; struct in6_addr daddr; int saddr; int nexthdr; } ;
struct ipv6_tel_txoption {int ops; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_11__ {scalar_t__ hop_limit; scalar_t__ proto; int flags; scalar_t__ collect_md; int name; int raddr; } ;
struct ip6_tnl {int encap_hlen; unsigned int tun_hlen; scalar_t__ err_count; int hlen; int dst_cache; TYPE_1__ encap; TYPE_4__ parms; struct net* net; scalar_t__ err_time; TYPE_2__* dev; } ;
struct flowi6 {struct in6_addr daddr; int saddr; int flowlabel; } ;
struct dst_entry {int header_len; struct net_device* dev; scalar_t__ error; } ;
typedef int __u8 ;
typedef int __u32 ;
struct TYPE_14__ {int dev; } ;
struct TYPE_13__ {scalar_t__ ttl; } ;
struct TYPE_10__ {scalar_t__ ttl; } ;
struct TYPE_12__ {TYPE_3__ key; } ;
struct TYPE_9__ {scalar_t__ type; struct net_device_stats stats; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EMSGSIZE ;
 unsigned int ETH_HLEN ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IP6TUNNEL_ERR_TIMEO ;
 int IP6_TNL_F_USE_ORIG_FWMARK ;
 int IP6_TNL_F_USE_ORIG_TCLASS ;
 int IPV4_MIN_MTU ;
 int IPV6_ADDR_ANY ;
 int IPV6_MIN_MTU ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int PTR_ERR (struct dst_entry*) ;
 scalar_t__ TUNNEL_ENCAP_NONE ;
 int consume_skb (struct sk_buff*) ;
 int dev_net (struct net_device*) ;
 struct dst_entry* dst_cache_get (int *) ;
 int dst_cache_set_ip6 (int *,struct dst_entry*,int *) ;
 int dst_link_failure (struct sk_buff*) ;
 unsigned int dst_mtu (struct dst_entry*) ;
 struct neighbour* dst_neigh_lookup (int ,struct in6_addr*) ;
 int dst_release (struct dst_entry*) ;
 int flowi6_to_flowi (struct flowi6*) ;
 scalar_t__ htons (int ) ;
 int init_tel_txopt (struct ipv6_tel_txoption*,int) ;
 scalar_t__ ip6_dst_hoplimit (struct dst_entry*) ;
 TYPE_7__* ip6_dst_idev (struct dst_entry*) ;
 int ip6_flow_hdr (struct ipv6hdr*,int ,int ) ;
 int ip6_make_flowinfo (int ,int ) ;
 int ip6_make_flowlabel (struct net*,struct sk_buff*,int ,int,struct flowi6*) ;
 struct dst_entry* ip6_route_output (struct net*,int *,struct flowi6*) ;
 int ip6_tnl_encap (struct sk_buff*,struct ip6_tnl*,int *,struct flowi6*) ;
 int ip6_tnl_xmit_ctl (struct ip6_tnl*,int *,struct in6_addr*) ;
 int ip6tunnel_xmit (int *,struct sk_buff*,struct net_device*) ;
 TYPE_6__* ip_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_addr_any (int *) ;
 int ipv6_addr_type (struct in6_addr*) ;
 scalar_t__ ipv6_dev_get_saddr (struct net*,int ,struct in6_addr*,int ,int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_push_frag_opts (struct sk_buff*,int *,int *) ;
 int jiffies ;
 int max (int,int ) ;
 int memcpy (struct in6_addr*,struct in6_addr*,int) ;
 int neigh_release (struct neighbour*) ;
 int net_eq (struct net*,int ) ;
 int net_warn_ratelimited (char*,int ) ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;
 int skb_clone_writable (struct sk_buff*,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_dst_update_pmtu (struct sk_buff*,int) ;
 unsigned int skb_headroom (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,unsigned int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_scrub_packet (struct sk_buff*,int) ;
 int skb_set_owner_w (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 TYPE_5__* skb_tunnel_info (struct sk_buff*) ;
 scalar_t__ time_before (int ,scalar_t__) ;
 struct dst_entry* xfrm_lookup (struct net*,struct dst_entry*,int ,int *,int ) ;

int ip6_tnl_xmit(struct sk_buff *skb, struct net_device *dev, __u8 dsfield,
   struct flowi6 *fl6, int encap_limit, __u32 *pmtu,
   __u8 proto)
{
 struct ip6_tnl *t = netdev_priv(dev);
 struct net *net = t->net;
 struct net_device_stats *stats = &t->dev->stats;
 struct ipv6hdr *ipv6h;
 struct ipv6_tel_txoption opt;
 struct dst_entry *dst = ((void*)0), *ndst = ((void*)0);
 struct net_device *tdev;
 int mtu;
 unsigned int eth_hlen = t->dev->type == ARPHRD_ETHER ? ETH_HLEN : 0;
 unsigned int psh_hlen = sizeof(struct ipv6hdr) + t->encap_hlen;
 unsigned int max_headroom = psh_hlen;
 bool use_cache = 0;
 u8 hop_limit;
 int err = -1;

 if (t->parms.collect_md) {
  hop_limit = skb_tunnel_info(skb)->key.ttl;
  goto route_lookup;
 } else {
  hop_limit = t->parms.hop_limit;
 }


 if (ipv6_addr_any(&t->parms.raddr)) {
  if (skb->protocol == htons(ETH_P_IPV6)) {
   struct in6_addr *addr6;
   struct neighbour *neigh;
   int addr_type;

   if (!skb_dst(skb))
    goto tx_err_link_failure;

   neigh = dst_neigh_lookup(skb_dst(skb),
       &ipv6_hdr(skb)->daddr);
   if (!neigh)
    goto tx_err_link_failure;

   addr6 = (struct in6_addr *)&neigh->primary_key;
   addr_type = ipv6_addr_type(addr6);

   if (addr_type == IPV6_ADDR_ANY)
    addr6 = &ipv6_hdr(skb)->daddr;

   memcpy(&fl6->daddr, addr6, sizeof(fl6->daddr));
   neigh_release(neigh);
  }
 } else if (t->parms.proto != 0 && !(t->parms.flags &
         (IP6_TNL_F_USE_ORIG_TCLASS |
          IP6_TNL_F_USE_ORIG_FWMARK))) {



  use_cache = 1;
 }

 if (use_cache)
  dst = dst_cache_get(&t->dst_cache);

 if (!ip6_tnl_xmit_ctl(t, &fl6->saddr, &fl6->daddr))
  goto tx_err_link_failure;

 if (!dst) {
route_lookup:

  fl6->flowlabel = ip6_make_flowinfo(dsfield, fl6->flowlabel);

  dst = ip6_route_output(net, ((void*)0), fl6);

  if (dst->error)
   goto tx_err_link_failure;
  dst = xfrm_lookup(net, dst, flowi6_to_flowi(fl6), ((void*)0), 0);
  if (IS_ERR(dst)) {
   err = PTR_ERR(dst);
   dst = ((void*)0);
   goto tx_err_link_failure;
  }
  if (t->parms.collect_md && ipv6_addr_any(&fl6->saddr) &&
      ipv6_dev_get_saddr(net, ip6_dst_idev(dst)->dev,
           &fl6->daddr, 0, &fl6->saddr))
   goto tx_err_link_failure;
  ndst = dst;
 }

 tdev = dst->dev;

 if (tdev == dev) {
  stats->collisions++;
  net_warn_ratelimited("%s: Local routing loop detected!\n",
         t->parms.name);
  goto tx_err_dst_release;
 }
 mtu = dst_mtu(dst) - eth_hlen - psh_hlen - t->tun_hlen;
 if (encap_limit >= 0) {
  max_headroom += 8;
  mtu -= 8;
 }
 mtu = max(mtu, skb->protocol == htons(ETH_P_IPV6) ?
         IPV6_MIN_MTU : IPV4_MIN_MTU);

 skb_dst_update_pmtu(skb, mtu);
 if (skb->len - t->tun_hlen - eth_hlen > mtu && !skb_is_gso(skb)) {
  *pmtu = mtu;
  err = -EMSGSIZE;
  goto tx_err_dst_release;
 }

 if (t->err_count > 0) {
  if (time_before(jiffies,
    t->err_time + IP6TUNNEL_ERR_TIMEO)) {
   t->err_count--;

   dst_link_failure(skb);
  } else {
   t->err_count = 0;
  }
 }

 skb_scrub_packet(skb, !net_eq(t->net, dev_net(dev)));




 max_headroom += LL_RESERVED_SPACE(tdev);

 if (skb_headroom(skb) < max_headroom || skb_shared(skb) ||
     (skb_cloned(skb) && !skb_clone_writable(skb, 0))) {
  struct sk_buff *new_skb;

  new_skb = skb_realloc_headroom(skb, max_headroom);
  if (!new_skb)
   goto tx_err_dst_release;

  if (skb->sk)
   skb_set_owner_w(new_skb, skb->sk);
  consume_skb(skb);
  skb = new_skb;
 }

 if (t->parms.collect_md) {
  if (t->encap.type != TUNNEL_ENCAP_NONE)
   goto tx_err_dst_release;
 } else {
  if (use_cache && ndst)
   dst_cache_set_ip6(&t->dst_cache, ndst, &fl6->saddr);
 }
 skb_dst_set(skb, dst);

 if (hop_limit == 0) {
  if (skb->protocol == htons(ETH_P_IP))
   hop_limit = ip_hdr(skb)->ttl;
  else if (skb->protocol == htons(ETH_P_IPV6))
   hop_limit = ipv6_hdr(skb)->hop_limit;
  else
   hop_limit = ip6_dst_hoplimit(dst);
 }




 max_headroom = LL_RESERVED_SPACE(dst->dev) + sizeof(struct ipv6hdr)
   + dst->header_len + t->hlen;
 if (max_headroom > dev->needed_headroom)
  dev->needed_headroom = max_headroom;

 err = ip6_tnl_encap(skb, t, &proto, fl6);
 if (err)
  return err;

 if (encap_limit >= 0) {
  init_tel_txopt(&opt, encap_limit);
  ipv6_push_frag_opts(skb, &opt.ops, &proto);
 }

 skb_push(skb, sizeof(struct ipv6hdr));
 skb_reset_network_header(skb);
 ipv6h = ipv6_hdr(skb);
 ip6_flow_hdr(ipv6h, dsfield,
       ip6_make_flowlabel(net, skb, fl6->flowlabel, 1, fl6));
 ipv6h->hop_limit = hop_limit;
 ipv6h->nexthdr = proto;
 ipv6h->saddr = fl6->saddr;
 ipv6h->daddr = fl6->daddr;
 ip6tunnel_xmit(((void*)0), skb, dev);
 return 0;
tx_err_link_failure:
 stats->tx_carrier_errors++;
 dst_link_failure(skb);
tx_err_dst_release:
 dst_release(dst);
 return err;
}
