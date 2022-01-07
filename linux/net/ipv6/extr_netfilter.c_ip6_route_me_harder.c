
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_bound_dev_if; } ;
struct sk_buff {int mark; int sk; } ;
struct net {int dummy; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct flowi6 {int saddr; int daddr; int flowi6_uid; int flowi6_mark; int flowi6_oif; } ;
struct dst_entry {int error; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {unsigned int hard_header_len; int ifindex; } ;


 int AF_INET6 ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HH_DATA_ALIGN (unsigned int) ;
 TYPE_3__* IP6CB (struct sk_buff*) ;
 int IP6SKB_XFRM_TRANSFORMED ;
 int IP6_INC_STATS (struct net*,int ,int ) ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MULTICAST ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int PTR_ERR (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int flowi6_to_flowi (struct flowi6*) ;
 int ip6_dst_idev (struct dst_entry*) ;
 struct dst_entry* ip6_route_output (struct net*,struct sock*,struct flowi6*) ;
 int ipv6_addr_type (int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int net_dbg_ratelimited (char*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 struct sock* sk_to_full_sk (int ) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 unsigned int skb_headroom (struct sk_buff*) ;
 int sock_net_uid (struct net*,struct sock*) ;
 scalar_t__ xfrm_decode_session (struct sk_buff*,int ,int ) ;
 struct dst_entry* xfrm_lookup (struct net*,struct dst_entry*,int ,struct sock*,int ) ;

int ip6_route_me_harder(struct net *net, struct sk_buff *skb)
{
 const struct ipv6hdr *iph = ipv6_hdr(skb);
 struct sock *sk = sk_to_full_sk(skb->sk);
 unsigned int hh_len;
 struct dst_entry *dst;
 int strict = (ipv6_addr_type(&iph->daddr) &
        (IPV6_ADDR_MULTICAST | IPV6_ADDR_LINKLOCAL));
 struct flowi6 fl6 = {
  .flowi6_oif = sk && sk->sk_bound_dev_if ? sk->sk_bound_dev_if :
   strict ? skb_dst(skb)->dev->ifindex : 0,
  .flowi6_mark = skb->mark,
  .flowi6_uid = sock_net_uid(net, sk),
  .daddr = iph->daddr,
  .saddr = iph->saddr,
 };
 int err;

 dst = ip6_route_output(net, sk, &fl6);
 err = dst->error;
 if (err) {
  IP6_INC_STATS(net, ip6_dst_idev(dst), IPSTATS_MIB_OUTNOROUTES);
  net_dbg_ratelimited("ip6_route_me_harder: No more route\n");
  dst_release(dst);
  return err;
 }


 skb_dst_drop(skb);

 skb_dst_set(skb, dst);
 hh_len = skb_dst(skb)->dev->hard_header_len;
 if (skb_headroom(skb) < hh_len &&
     pskb_expand_head(skb, HH_DATA_ALIGN(hh_len - skb_headroom(skb)),
        0, GFP_ATOMIC))
  return -ENOMEM;

 return 0;
}
