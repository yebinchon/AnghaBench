
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct xfrm_state {int dummy; } ;
struct xfrm_selector {int prefixlen_d; int prefixlen_s; scalar_t__ proto; int ifindex; void* sport_mask; scalar_t__ sport; void* dport_mask; scalar_t__ dport; int family; int saddr; int daddr; } ;
struct sk_buff {scalar_t__ cb; } ;
struct net {int dummy; } ;
struct ipv6_destopt_hao {int addr; } ;
struct inet6_skb_parm {int dsthao; int iif; } ;
struct flowi6 {scalar_t__ flowi6_proto; scalar_t__ fl6_mh_type; int flowi6_oif; int uli; } ;
struct TYPE_3__ {struct flowi6 ip6; } ;
struct flowi {TYPE_1__ u; } ;
typedef int sel ;
typedef int ktime_t ;
struct TYPE_4__ {int saddr; int daddr; } ;


 int AF_INET6 ;
 scalar_t__ IP6_MH_TYPE_MAX ;
 int IPPROTO_DSTOPTS ;
 scalar_t__ IPPROTO_MH ;
 int IPV6_TLV_HAO ;
 void* htons (int ) ;
 int ipv6_find_tlv (struct sk_buff*,int,int ) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int km_report (struct net*,int ,struct xfrm_selector*,int *) ;
 scalar_t__ likely (int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct xfrm_selector*,int ,int) ;
 int mip6_report_rl_allow (int ,int *,int *,int ) ;
 int skb_get_ktime (struct sk_buff*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xfrm_flowi_dport (struct flowi const*,int *) ;
 scalar_t__ xfrm_flowi_sport (struct flowi const*,int *) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int mip6_destopt_reject(struct xfrm_state *x, struct sk_buff *skb,
          const struct flowi *fl)
{
 struct net *net = xs_net(x);
 struct inet6_skb_parm *opt = (struct inet6_skb_parm *)skb->cb;
 const struct flowi6 *fl6 = &fl->u.ip6;
 struct ipv6_destopt_hao *hao = ((void*)0);
 struct xfrm_selector sel;
 int offset;
 ktime_t stamp;
 int err = 0;

 if (unlikely(fl6->flowi6_proto == IPPROTO_MH &&
       fl6->fl6_mh_type <= IP6_MH_TYPE_MAX))
  goto out;

 if (likely(opt->dsthao)) {
  offset = ipv6_find_tlv(skb, opt->dsthao, IPV6_TLV_HAO);
  if (likely(offset >= 0))
   hao = (struct ipv6_destopt_hao *)
     (skb_network_header(skb) + offset);
 }

 stamp = skb_get_ktime(skb);

 if (!mip6_report_rl_allow(stamp, &ipv6_hdr(skb)->daddr,
      hao ? &hao->addr : &ipv6_hdr(skb)->saddr,
      opt->iif))
  goto out;

 memset(&sel, 0, sizeof(sel));
 memcpy(&sel.daddr, (xfrm_address_t *)&ipv6_hdr(skb)->daddr,
        sizeof(sel.daddr));
 sel.prefixlen_d = 128;
 memcpy(&sel.saddr, (xfrm_address_t *)&ipv6_hdr(skb)->saddr,
        sizeof(sel.saddr));
 sel.prefixlen_s = 128;
 sel.family = AF_INET6;
 sel.proto = fl6->flowi6_proto;
 sel.dport = xfrm_flowi_dport(fl, &fl6->uli);
 if (sel.dport)
  sel.dport_mask = htons(~0);
 sel.sport = xfrm_flowi_sport(fl, &fl6->uli);
 if (sel.sport)
  sel.sport_mask = htons(~0);
 sel.ifindex = fl6->flowi6_oif;

 err = km_report(net, IPPROTO_DSTOPTS, &sel,
   (hao ? (xfrm_address_t *)&hao->addr : ((void*)0)));

 out:
 return err;
}
