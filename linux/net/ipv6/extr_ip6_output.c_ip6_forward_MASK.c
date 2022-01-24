#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ pkt_type; int sk; TYPE_3__* dev; } ;
struct in6_addr {int dummy; } ;
struct rt6_info {int rt6i_flags; struct in6_addr rt6i_gateway; } ;
struct TYPE_9__ {int /*<<< orphan*/  peers; TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {int hop_limit; int /*<<< orphan*/  saddr; struct in6_addr daddr; } ;
struct inet_peer {int dummy; } ;
struct inet6_skb_parm {int flags; scalar_t__ iif; scalar_t__ srcrt; int /*<<< orphan*/  ra; } ;
struct inet6_dev {int dummy; } ;
struct dst_entry {TYPE_3__* dev; } ;
struct TYPE_10__ {scalar_t__ ifindex; int /*<<< orphan*/  hard_header_len; } ;
struct TYPE_8__ {scalar_t__ forwarding; scalar_t__ proxy_ndp; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_EXC_HOPLIMIT ; 
 int /*<<< orphan*/  ICMPV6_NOT_NEIGHBOUR ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  ICMPV6_TIME_EXCEED ; 
 struct inet6_skb_parm* FUNC0 (struct sk_buff*) ; 
 int IP6SKB_ROUTERALERT ; 
 int /*<<< orphan*/  IPSTATS_MIB_FRAGFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INADDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INTOOBIGERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_LOOPBACK ; 
 int IPV6_ADDR_MULTICAST ; 
 scalar_t__ IPV6_MIN_MTU ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,int /*<<< orphan*/ *,struct sk_buff*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_FORWARD ; 
 scalar_t__ PACKET_HOST ; 
 int RTF_GATEWAY ; 
 int /*<<< orphan*/  XFRM_POLICY_FWD ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC3 (TYPE_3__*) ; 
 struct net* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct inet_peer* FUNC6 (int /*<<< orphan*/ ,struct in6_addr*,int) ; 
 scalar_t__ FUNC7 (struct inet_peer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inet_peer*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC10 (struct dst_entry*) ; 
 scalar_t__ FUNC11 (struct dst_entry*) ; 
 int /*<<< orphan*/  ip6_forward_finish ; 
 int FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*,scalar_t__) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  nd_tbl ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,struct net*,struct in6_addr*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*) ; 

int FUNC29(struct sk_buff *skb)
{
	struct inet6_dev *idev = FUNC3(skb->dev);
	struct dst_entry *dst = FUNC22(skb);
	struct ipv6hdr *hdr = FUNC16(skb);
	struct inet6_skb_parm *opt = FUNC0(skb);
	struct net *net = FUNC4(dst->dev);
	u32 mtu;

	if (net->ipv6.devconf_all->forwarding == 0)
		goto error;

	if (skb->pkt_type != PACKET_HOST)
		goto drop;

	if (FUNC26(skb->sk))
		goto drop;

	if (FUNC25(skb))
		goto drop;

	if (!FUNC27(NULL, XFRM_POLICY_FWD, skb)) {
		FUNC2(net, idev, IPSTATS_MIB_INDISCARDS);
		goto drop;
	}

	FUNC23(skb);

	/*
	 *	We DO NOT make any processing on
	 *	RA packets, pushing them to user level AS IS
	 *	without ane WARRANTY that application will be able
	 *	to interpret them. The reason is that we
	 *	cannot make anything clever here.
	 *
	 *	We are not end-node, so that if packet contains
	 *	AH/ESP, we cannot make anything.
	 *	Defragmentation also would be mistake, RA packets
	 *	cannot be fragmented, because there is no warranty
	 *	that different fragments will go along one path. --ANK
	 */
	if (FUNC26(opt->flags & IP6SKB_ROUTERALERT)) {
		if (FUNC9(skb, FUNC19(opt->ra)))
			return 0;
	}

	/*
	 *	check and decrement ttl
	 */
	if (hdr->hop_limit <= 1) {
		/* Force OUTPUT device used as source address */
		skb->dev = dst->dev;
		FUNC5(skb, ICMPV6_TIME_EXCEED, ICMPV6_EXC_HOPLIMIT, 0);
		FUNC2(net, idev, IPSTATS_MIB_INHDRERRORS);

		FUNC17(skb);
		return -ETIMEDOUT;
	}

	/* XXX: idev->cnf.proxy_ndp? */
	if (net->ipv6.devconf_all->proxy_ndp &&
	    FUNC20(&nd_tbl, net, &hdr->daddr, skb->dev, 0)) {
		int proxied = FUNC12(skb);
		if (proxied > 0)
			return FUNC13(skb);
		else if (proxied < 0) {
			FUNC2(net, idev, IPSTATS_MIB_INDISCARDS);
			goto drop;
		}
	}

	if (!FUNC28(skb)) {
		FUNC2(net, idev, IPSTATS_MIB_INDISCARDS);
		goto drop;
	}
	dst = FUNC22(skb);

	/* IPv6 specs say nothing about it, but it is clear that we cannot
	   send redirects to source routed frames.
	   We don't send redirects to frames decapsulated from IPsec.
	 */
	if (FUNC0(skb)->iif == dst->dev->ifindex &&
	    opt->srcrt == 0 && !FUNC24(skb)) {
		struct in6_addr *target = NULL;
		struct inet_peer *peer;
		struct rt6_info *rt;

		/*
		 *	incoming and outgoing devices are the same
		 *	send a redirect.
		 */

		rt = (struct rt6_info *) dst;
		if (rt->rt6i_flags & RTF_GATEWAY)
			target = &rt->rt6i_gateway;
		else
			target = &hdr->daddr;

		peer = FUNC6(net->ipv6.peers, &hdr->daddr, 1);

		/* Limit redirects both by destination (here)
		   and by source (inside ndisc_send_redirect)
		 */
		if (FUNC7(peer, 1*HZ))
			FUNC18(skb, target);
		if (peer)
			FUNC8(peer);
	} else {
		int addrtype = FUNC15(&hdr->saddr);

		/* This check is security critical. */
		if (addrtype == IPV6_ADDR_ANY ||
		    addrtype & (IPV6_ADDR_MULTICAST | IPV6_ADDR_LOOPBACK))
			goto error;
		if (addrtype & IPV6_ADDR_LINKLOCAL) {
			FUNC5(skb, ICMPV6_DEST_UNREACH,
				    ICMPV6_NOT_NEIGHBOUR, 0);
			goto error;
		}
	}

	mtu = FUNC11(dst);
	if (mtu < IPV6_MIN_MTU)
		mtu = IPV6_MIN_MTU;

	if (FUNC14(skb, mtu)) {
		/* Again, force OUTPUT device used as source address */
		skb->dev = dst->dev;
		FUNC5(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
		FUNC2(net, idev, IPSTATS_MIB_INTOOBIGERRORS);
		FUNC2(net, FUNC10(dst),
				IPSTATS_MIB_FRAGFAILS);
		FUNC17(skb);
		return -EMSGSIZE;
	}

	if (FUNC21(skb, dst->dev->hard_header_len)) {
		FUNC2(net, FUNC10(dst),
				IPSTATS_MIB_OUTDISCARDS);
		goto drop;
	}

	hdr = FUNC16(skb);

	/* Mangling hops number delayed to point after skb COW */

	hdr->hop_limit--;

	return FUNC1(NFPROTO_IPV6, NF_INET_FORWARD,
		       net, NULL, skb, skb->dev, dst->dev,
		       ip6_forward_finish);

error:
	FUNC2(net, idev, IPSTATS_MIB_INADDRERRORS);
drop:
	FUNC17(skb);
	return -EINVAL;
}