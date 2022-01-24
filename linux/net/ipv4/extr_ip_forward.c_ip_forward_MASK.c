#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ pkt_type; int /*<<< orphan*/  dev; int /*<<< orphan*/  priority; int /*<<< orphan*/  sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; scalar_t__ header_len; } ;
struct rtable {TYPE_2__ dst; scalar_t__ rt_uses_gateway; } ;
struct TYPE_4__ {scalar_t__ sysctl_ip_fwd_update_priority; } ;
struct net {TYPE_1__ ipv4; } ;
struct iphdr {int ttl; int /*<<< orphan*/  tos; } ;
struct ip_options {int /*<<< orphan*/  srr; scalar_t__ is_strictroute; scalar_t__ router_alert; } ;
struct TYPE_6__ {int flags; struct ip_options opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_EXC_TTL ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 int /*<<< orphan*/  ICMP_SR_FAILED ; 
 int /*<<< orphan*/  ICMP_TIME_EXCEEDED ; 
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int IPSKB_DOREDIRECT ; 
 int IPSKB_FORWARDED ; 
 int /*<<< orphan*/  IPSTATS_MIB_FRAGFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_FORWARD ; 
 scalar_t__ PACKET_HOST ; 
 int /*<<< orphan*/  XFRM_POLICY_FWD ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_forward_finish ; 
 struct iphdr* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 struct rtable* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 

int FUNC24(struct sk_buff *skb)
{
	u32 mtu;
	struct iphdr *iph;	/* Our header */
	struct rtable *rt;	/* Route we use */
	struct ip_options *opt	= &(FUNC0(skb)->opt);
	struct net *net;

	/* that should never happen */
	if (skb->pkt_type != PACKET_HOST)
		goto drop;

	if (FUNC21(skb->sk))
		goto drop;

	if (FUNC20(skb))
		goto drop;

	if (!FUNC22(NULL, XFRM_POLICY_FWD, skb))
		goto drop;

	if (FUNC0(skb)->opt.router_alert && FUNC8(skb))
		return NET_RX_SUCCESS;

	FUNC17(skb);
	net = FUNC5(skb->dev);

	/*
	 *	According to the RFC, we must first decrease the TTL field. If
	 *	that reaches zero, we must reply an ICMP control message telling
	 *	that the packet's lifetime expired.
	 */
	if (FUNC12(skb)->ttl <= 1)
		goto too_many_hops;

	if (!FUNC23(skb))
		goto drop;

	rt = FUNC18(skb);

	if (opt->is_strictroute && rt->rt_uses_gateway)
		goto sr_failed;

	FUNC0(skb)->flags |= IPSKB_FORWARDED;
	mtu = FUNC10(&rt->dst, true);
	if (FUNC11(skb, mtu)) {
		FUNC1(net, IPSTATS_MIB_FRAGFAILS);
		FUNC7(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
			  FUNC6(mtu));
		goto drop;
	}

	/* We are about to mangle packet. Copy it! */
	if (FUNC16(skb, FUNC2(rt->dst.dev)+rt->dst.header_len))
		goto drop;
	iph = FUNC12(skb);

	/* Decrease ttl after skb cow done */
	FUNC9(iph);

	/*
	 *	We now generate an ICMP HOST REDIRECT giving the route
	 *	we calculated.
	 */
	if (FUNC0(skb)->flags & IPSKB_DOREDIRECT && !opt->srr &&
	    !FUNC19(skb))
		FUNC13(skb);

	if (net->ipv4.sysctl_ip_fwd_update_priority)
		skb->priority = FUNC15(iph->tos);

	return FUNC3(NFPROTO_IPV4, NF_INET_FORWARD,
		       net, NULL, skb, skb->dev, rt->dst.dev,
		       ip_forward_finish);

sr_failed:
	/*
	 *	Strict routing permits no gatewaying
	 */
	 FUNC7(skb, ICMP_DEST_UNREACH, ICMP_SR_FAILED, 0);
	 goto drop;

too_many_hops:
	/* Tell the sender its packet died... */
	FUNC4(net, IPSTATS_MIB_INHDRERRORS);
	FUNC7(skb, ICMP_TIME_EXCEEDED, ICMP_EXC_TTL, 0);
drop:
	FUNC14(skb);
	return NET_RX_DROP;
}