#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ protocol; unsigned int len; scalar_t__ sk; } ;
struct net_device_stats {int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  collisions; } ;
struct net_device {unsigned int needed_headroom; } ;
struct net {int dummy; } ;
struct neighbour {int /*<<< orphan*/  primary_key; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {scalar_t__ hop_limit; struct in6_addr daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  nexthdr; } ;
struct ipv6_tel_txoption {int /*<<< orphan*/  ops; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_11__ {scalar_t__ hop_limit; scalar_t__ proto; int flags; scalar_t__ collect_md; int /*<<< orphan*/  name; int /*<<< orphan*/  raddr; } ;
struct ip6_tnl {int encap_hlen; unsigned int tun_hlen; scalar_t__ err_count; int hlen; int /*<<< orphan*/  dst_cache; TYPE_1__ encap; TYPE_4__ parms; struct net* net; scalar_t__ err_time; TYPE_2__* dev; } ;
struct flowi6 {struct in6_addr daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowlabel; } ;
struct dst_entry {int header_len; struct net_device* dev; scalar_t__ error; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {scalar_t__ ttl; } ;
struct TYPE_10__ {scalar_t__ ttl; } ;
struct TYPE_12__ {TYPE_3__ key; } ;
struct TYPE_9__ {scalar_t__ type; struct net_device_stats stats; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EMSGSIZE ; 
 unsigned int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ IP6TUNNEL_ERR_TIMEO ; 
 int IP6_TNL_F_USE_ORIG_FWMARK ; 
 int IP6_TNL_F_USE_ORIG_TCLASS ; 
 int /*<<< orphan*/  IPV4_MIN_MTU ; 
 int IPV6_ADDR_ANY ; 
 int /*<<< orphan*/  IPV6_MIN_MTU ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct dst_entry*) ; 
 scalar_t__ TUNNEL_ENCAP_NONE ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct dst_entry* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct dst_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 unsigned int FUNC8 (struct dst_entry*) ; 
 struct neighbour* FUNC9 (int /*<<< orphan*/ ,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC10 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct flowi6*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ipv6_tel_txoption*,int) ; 
 scalar_t__ FUNC14 (struct dst_entry*) ; 
 TYPE_7__* FUNC15 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct ipv6hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int,struct flowi6*) ; 
 struct dst_entry* FUNC19 (struct net*,int /*<<< orphan*/ *,struct flowi6*) ; 
 int FUNC20 (struct sk_buff*,struct ip6_tnl*,int /*<<< orphan*/ *,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC21 (struct ip6_tnl*,int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct sk_buff*,struct net_device*) ; 
 TYPE_6__* FUNC23 (struct sk_buff*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (struct in6_addr*) ; 
 scalar_t__ FUNC26 (struct net*,int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC29 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct in6_addr*,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC32 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC34 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC38 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC39 (struct sk_buff*,int) ; 
 unsigned int FUNC40 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC41 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC42 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC43 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC44 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC45 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC46 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC47 (struct sk_buff*) ; 
 TYPE_5__* FUNC48 (struct sk_buff*) ; 
 scalar_t__ FUNC49 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dst_entry* FUNC50 (struct net*,struct dst_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC51(struct sk_buff *skb, struct net_device *dev, __u8 dsfield,
		 struct flowi6 *fl6, int encap_limit, __u32 *pmtu,
		 __u8 proto)
{
	struct ip6_tnl *t = FUNC34(dev);
	struct net *net = t->net;
	struct net_device_stats *stats = &t->dev->stats;
	struct ipv6hdr *ipv6h;
	struct ipv6_tel_txoption opt;
	struct dst_entry *dst = NULL, *ndst = NULL;
	struct net_device *tdev;
	int mtu;
	unsigned int eth_hlen = t->dev->type == ARPHRD_ETHER ? ETH_HLEN : 0;
	unsigned int psh_hlen = sizeof(struct ipv6hdr) + t->encap_hlen;
	unsigned int max_headroom = psh_hlen;
	bool use_cache = false;
	u8 hop_limit;
	int err = -1;

	if (t->parms.collect_md) {
		hop_limit = FUNC48(skb)->key.ttl;
		goto route_lookup;
	} else {
		hop_limit = t->parms.hop_limit;
	}

	/* NBMA tunnel */
	if (FUNC24(&t->parms.raddr)) {
		if (skb->protocol == FUNC12(ETH_P_IPV6)) {
			struct in6_addr *addr6;
			struct neighbour *neigh;
			int addr_type;

			if (!FUNC37(skb))
				goto tx_err_link_failure;

			neigh = FUNC9(FUNC37(skb),
						 &FUNC27(skb)->daddr);
			if (!neigh)
				goto tx_err_link_failure;

			addr6 = (struct in6_addr *)&neigh->primary_key;
			addr_type = FUNC25(addr6);

			if (addr_type == IPV6_ADDR_ANY)
				addr6 = &FUNC27(skb)->daddr;

			FUNC30(&fl6->daddr, addr6, sizeof(fl6->daddr));
			FUNC31(neigh);
		}
	} else if (t->parms.proto != 0 && !(t->parms.flags &
					    (IP6_TNL_F_USE_ORIG_TCLASS |
					     IP6_TNL_F_USE_ORIG_FWMARK))) {
		/* enable the cache only if neither the outer protocol nor the
		 * routing decision depends on the current inner header value
		 */
		use_cache = true;
	}

	if (use_cache)
		dst = FUNC5(&t->dst_cache);

	if (!FUNC21(t, &fl6->saddr, &fl6->daddr))
		goto tx_err_link_failure;

	if (!dst) {
route_lookup:
		/* add dsfield to flowlabel for route lookup */
		fl6->flowlabel = FUNC17(dsfield, fl6->flowlabel);

		dst = FUNC19(net, NULL, fl6);

		if (dst->error)
			goto tx_err_link_failure;
		dst = FUNC50(net, dst, FUNC11(fl6), NULL, 0);
		if (FUNC0(dst)) {
			err = FUNC2(dst);
			dst = NULL;
			goto tx_err_link_failure;
		}
		if (t->parms.collect_md && FUNC24(&fl6->saddr) &&
		    FUNC26(net, FUNC15(dst)->dev,
				       &fl6->daddr, 0, &fl6->saddr))
			goto tx_err_link_failure;
		ndst = dst;
	}

	tdev = dst->dev;

	if (tdev == dev) {
		stats->collisions++;
		FUNC33("%s: Local routing loop detected!\n",
				     t->parms.name);
		goto tx_err_dst_release;
	}
	mtu = FUNC8(dst) - eth_hlen - psh_hlen - t->tun_hlen;
	if (encap_limit >= 0) {
		max_headroom += 8;
		mtu -= 8;
	}
	mtu = FUNC29(mtu, skb->protocol == FUNC12(ETH_P_IPV6) ?
		       IPV6_MIN_MTU : IPV4_MIN_MTU);

	FUNC39(skb, mtu);
	if (skb->len - t->tun_hlen - eth_hlen > mtu && !FUNC41(skb)) {
		*pmtu = mtu;
		err = -EMSGSIZE;
		goto tx_err_dst_release;
	}

	if (t->err_count > 0) {
		if (FUNC49(jiffies,
				t->err_time + IP6TUNNEL_ERR_TIMEO)) {
			t->err_count--;

			FUNC7(skb);
		} else {
			t->err_count = 0;
		}
	}

	FUNC45(skb, !FUNC32(t->net, FUNC4(dev)));

	/*
	 * Okay, now see if we can stuff it in the buffer as-is.
	 */
	max_headroom += FUNC1(tdev);

	if (FUNC40(skb) < max_headroom || FUNC47(skb) ||
	    (FUNC36(skb) && !FUNC35(skb, 0))) {
		struct sk_buff *new_skb;

		new_skb = FUNC43(skb, max_headroom);
		if (!new_skb)
			goto tx_err_dst_release;

		if (skb->sk)
			FUNC46(new_skb, skb->sk);
		FUNC3(skb);
		skb = new_skb;
	}

	if (t->parms.collect_md) {
		if (t->encap.type != TUNNEL_ENCAP_NONE)
			goto tx_err_dst_release;
	} else {
		if (use_cache && ndst)
			FUNC6(&t->dst_cache, ndst, &fl6->saddr);
	}
	FUNC38(skb, dst);

	if (hop_limit == 0) {
		if (skb->protocol == FUNC12(ETH_P_IP))
			hop_limit = FUNC23(skb)->ttl;
		else if (skb->protocol == FUNC12(ETH_P_IPV6))
			hop_limit = FUNC27(skb)->hop_limit;
		else
			hop_limit = FUNC14(dst);
	}

	/* Calculate max headroom for all the headers and adjust
	 * needed_headroom if necessary.
	 */
	max_headroom = FUNC1(dst->dev) + sizeof(struct ipv6hdr)
			+ dst->header_len + t->hlen;
	if (max_headroom > dev->needed_headroom)
		dev->needed_headroom = max_headroom;

	err = FUNC20(skb, t, &proto, fl6);
	if (err)
		return err;

	if (encap_limit >= 0) {
		FUNC13(&opt, encap_limit);
		FUNC28(skb, &opt.ops, &proto);
	}

	FUNC42(skb, sizeof(struct ipv6hdr));
	FUNC44(skb);
	ipv6h = FUNC27(skb);
	FUNC16(ipv6h, dsfield,
		     FUNC18(net, skb, fl6->flowlabel, true, fl6));
	ipv6h->hop_limit = hop_limit;
	ipv6h->nexthdr = proto;
	ipv6h->saddr = fl6->saddr;
	ipv6h->daddr = fl6->daddr;
	FUNC22(NULL, skb, dev);
	return 0;
tx_err_link_failure:
	stats->tx_carrier_errors++;
	FUNC7(skb);
tx_err_dst_release:
	FUNC10(dst);
	return err;
}