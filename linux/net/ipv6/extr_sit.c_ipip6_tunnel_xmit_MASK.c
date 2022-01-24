#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int len; scalar_t__ sk; } ;
struct TYPE_7__ {struct net_device* dev; } ;
struct rtable {scalar_t__ rt_type; TYPE_3__ dst; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {int priv_flags; TYPE_1__ stats; } ;
struct neighbour {int /*<<< orphan*/  primary_key; } ;
struct in6_addr {scalar_t__* s6_addr32; } ;
struct ipv6hdr {int hop_limit; struct in6_addr daddr; } ;
struct iphdr {int tos; int ttl; scalar_t__ daddr; int /*<<< orphan*/  saddr; scalar_t__ frag_off; } ;
struct TYPE_6__ {struct iphdr iph; int /*<<< orphan*/  link; } ;
struct ip_tunnel {int hlen; scalar_t__ err_count; int /*<<< orphan*/  net; scalar_t__ err_time; TYPE_2__ parms; int /*<<< orphan*/  dst_cache; int /*<<< orphan*/  fwmark; } ;
struct flowi4 {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int IFF_ISATAP ; 
 int FUNC0 (int,int) ; 
 int IPPROTO_IPV6 ; 
 scalar_t__ IPTUNNEL_ERR_TIMEO ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_COMPATv4 ; 
 int IPV6_ADDR_UNICAST ; 
 int IPV6_MIN_MTU ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ RTN_UNICAST ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SKB_GSO_IPXIP4 ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct rtable* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (TYPE_3__*) ; 
 struct neighbour* FUNC10 (scalar_t__,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC11 (struct flowi4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rtable* FUNC13 (int /*<<< orphan*/ ,struct flowi4*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct rtable*) ; 
 scalar_t__ FUNC15 (struct sk_buff*,struct ip_tunnel*,int*,struct flowi4*) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct rtable*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,scalar_t__,int) ; 
 scalar_t__ FUNC18 (struct in6_addr const*) ; 
 int FUNC19 (struct in6_addr const*) ; 
 int FUNC20 (struct ipv6hdr const*) ; 
 struct ipv6hdr* FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC26 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct sk_buff*) ; 
 scalar_t__ FUNC29 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*,int) ; 
 unsigned int FUNC31 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct sk_buff*) ; 
 struct sk_buff* FUNC33 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC39 (struct ip_tunnel*,struct in6_addr*) ; 

__attribute__((used)) static netdev_tx_t FUNC40(struct sk_buff *skb,
				     struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC26(dev);
	const struct iphdr  *tiph = &tunnel->parms.iph;
	const struct ipv6hdr *iph6 = FUNC21(skb);
	u8     tos = tunnel->parms.iph.tos;
	__be16 df = tiph->frag_off;
	struct rtable *rt;		/* Route to the other host */
	struct net_device *tdev;	/* Device to other host */
	unsigned int max_headroom;	/* The extra header space needed */
	__be32 dst = tiph->daddr;
	struct flowi4 fl4;
	int    mtu;
	const struct in6_addr *addr6;
	int addr_type;
	u8 ttl;
	u8 protocol = IPPROTO_IPV6;
	int t_hlen = tunnel->hlen + sizeof(struct iphdr);

	if (tos == 1)
		tos = FUNC20(iph6);

	/* ISATAP (RFC4214) - must come before 6to4 */
	if (dev->priv_flags & IFF_ISATAP) {
		struct neighbour *neigh = NULL;
		bool do_tx_error = false;

		if (FUNC29(skb))
			neigh = FUNC10(FUNC29(skb), &iph6->daddr);

		if (!neigh) {
			FUNC24("nexthop == NULL\n");
			goto tx_error;
		}

		addr6 = (const struct in6_addr *)&neigh->primary_key;
		addr_type = FUNC19(addr6);

		if ((addr_type & IPV6_ADDR_UNICAST) &&
		     FUNC18(addr6))
			dst = addr6->s6_addr32[3];
		else
			do_tx_error = true;

		FUNC23(neigh);
		if (do_tx_error)
			goto tx_error;
	}

	if (!dst)
		dst = FUNC39(tunnel, &iph6->daddr);

	if (!dst) {
		struct neighbour *neigh = NULL;
		bool do_tx_error = false;

		if (FUNC29(skb))
			neigh = FUNC10(FUNC29(skb), &iph6->daddr);

		if (!neigh) {
			FUNC24("nexthop == NULL\n");
			goto tx_error;
		}

		addr6 = (const struct in6_addr *)&neigh->primary_key;
		addr_type = FUNC19(addr6);

		if (addr_type == IPV6_ADDR_ANY) {
			addr6 = &FUNC21(skb)->daddr;
			addr_type = FUNC19(addr6);
		}

		if ((addr_type & IPV6_ADDR_COMPATv4) != 0)
			dst = addr6->s6_addr32[3];
		else
			do_tx_error = true;

		FUNC23(neigh);
		if (do_tx_error)
			goto tx_error;
	}

	FUNC11(&fl4, tunnel->parms.link, tunnel->fwmark,
			   FUNC3(tos), RT_SCOPE_UNIVERSE, IPPROTO_IPV6,
			   0, dst, tiph->saddr, 0, 0,
			   FUNC37(tunnel->net, NULL));

	rt = FUNC6(&tunnel->dst_cache, &fl4.saddr);
	if (!rt) {
		rt = FUNC13(tunnel->net, &fl4, NULL);
		if (FUNC1(rt)) {
			dev->stats.tx_carrier_errors++;
			goto tx_error_icmp;
		}
		FUNC7(&tunnel->dst_cache, &rt->dst, fl4.saddr);
	}

	if (rt->rt_type != RTN_UNICAST) {
		FUNC14(rt);
		dev->stats.tx_carrier_errors++;
		goto tx_error_icmp;
	}
	tdev = rt->dst.dev;

	if (tdev == dev) {
		FUNC14(rt);
		dev->stats.collisions++;
		goto tx_error;
	}

	if (FUNC16(skb, SKB_GSO_IPXIP4)) {
		FUNC14(rt);
		goto tx_error;
	}

	if (df) {
		mtu = FUNC9(&rt->dst) - t_hlen;

		if (mtu < 68) {
			dev->stats.collisions++;
			FUNC14(rt);
			goto tx_error;
		}

		if (mtu < IPV6_MIN_MTU) {
			mtu = IPV6_MIN_MTU;
			df = 0;
		}

		if (tunnel->parms.iph.daddr)
			FUNC30(skb, mtu);

		if (skb->len > mtu && !FUNC32(skb)) {
			FUNC12(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
			FUNC14(rt);
			goto tx_error;
		}
	}

	if (tunnel->err_count > 0) {
		if (FUNC38(jiffies,
				tunnel->err_time + IPTUNNEL_ERR_TIMEO)) {
			tunnel->err_count--;
			FUNC8(skb);
		} else
			tunnel->err_count = 0;
	}

	/*
	 * Okay, now see if we can stuff it in the buffer as-is.
	 */
	max_headroom = FUNC2(tdev) + t_hlen;

	if (FUNC31(skb) < max_headroom || FUNC36(skb) ||
	    (FUNC28(skb) && !FUNC27(skb, 0))) {
		struct sk_buff *new_skb = FUNC33(skb, max_headroom);
		if (!new_skb) {
			FUNC14(rt);
			dev->stats.tx_dropped++;
			FUNC22(skb);
			return NETDEV_TX_OK;
		}
		if (skb->sk)
			FUNC35(new_skb, skb->sk);
		FUNC4(skb);
		skb = new_skb;
		iph6 = FUNC21(skb);
	}
	ttl = tiph->ttl;
	if (ttl == 0)
		ttl = iph6->hop_limit;
	tos = FUNC0(tos, FUNC20(iph6));

	if (FUNC15(skb, tunnel, &protocol, &fl4) < 0) {
		FUNC14(rt);
		goto tx_error;
	}

	FUNC34(skb, IPPROTO_IPV6);

	FUNC17(NULL, rt, skb, fl4.saddr, fl4.daddr, protocol, tos, ttl,
		      df, !FUNC25(tunnel->net, FUNC5(dev)));
	return NETDEV_TX_OK;

tx_error_icmp:
	FUNC8(skb);
tx_error:
	FUNC22(skb);
	dev->stats.tx_errors++;
	return NETDEV_TX_OK;
}