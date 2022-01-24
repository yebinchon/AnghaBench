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
struct sock {int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_priority; int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/  ignore_df; } ;
struct rtable {int /*<<< orphan*/  dst; scalar_t__ rt_uses_gateway; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  protocol; int /*<<< orphan*/  ttl; void* frag_off; } ;
struct TYPE_6__ {int optlen; scalar_t__ is_strictroute; int /*<<< orphan*/  faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_3__ opt; } ;
struct inet_sock {int /*<<< orphan*/  inet_daddr; int /*<<< orphan*/  inet_sport; int /*<<< orphan*/  inet_dport; int /*<<< orphan*/  inet_saddr; int /*<<< orphan*/  inet_opt; } ;
struct flowi4 {int dummy; } ;
struct TYPE_4__ {struct flowi4 ip4; } ;
struct flowi {TYPE_1__ u; } ;
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  void* __be16 ;
struct TYPE_5__ {scalar_t__ gso_segs; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int IP_DF ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 struct inet_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct iphdr*,struct flowi4*) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,TYPE_3__*,int /*<<< orphan*/ ,struct rtable*,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC11 (struct net*,struct flowi4*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,struct sk_buff*,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inet_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 struct ip_options_rcu* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 struct rtable* FUNC22 (struct sk_buff*) ; 
 TYPE_2__* FUNC23 (struct sk_buff*) ; 
 struct net* FUNC24 (struct sock*) ; 

int FUNC25(struct sock *sk, struct sk_buff *skb, struct flowi *fl,
		    __u8 tos)
{
	struct inet_sock *inet = FUNC5(sk);
	struct net *net = FUNC24(sk);
	struct ip_options_rcu *inet_opt;
	struct flowi4 *fl4;
	struct rtable *rt;
	struct iphdr *iph;
	int res;

	/* Skip all of this if the packet is already routed,
	 * f.e. by something like SCTP.
	 */
	FUNC16();
	inet_opt = FUNC15(inet->inet_opt);
	fl4 = &fl->u.ip4;
	rt = FUNC22(skb);
	if (rt)
		goto packet_routed;

	/* Make sure we can route this packet. */
	rt = (struct rtable *)FUNC3(sk, 0);
	if (!rt) {
		__be32 daddr;

		/* Use correct destination address if we have options. */
		daddr = inet->inet_daddr;
		if (inet_opt && inet_opt->opt.srr)
			daddr = inet_opt->opt.faddr;

		/* If this fails, retransmit mechanism of transport layer will
		 * keep trying until route appears or the connection times
		 * itself out.
		 */
		rt = FUNC11(net, fl4, sk,
					   daddr, inet->inet_saddr,
					   inet->inet_dport,
					   inet->inet_sport,
					   sk->sk_protocol,
					   FUNC2(sk, tos),
					   sk->sk_bound_dev_if);
		if (FUNC1(rt))
			goto no_route;
		FUNC18(sk, &rt->dst);
	}
	FUNC19(skb, &rt->dst);

packet_routed:
	if (inet_opt && inet_opt->opt.is_strictroute && rt->rt_uses_gateway)
		goto no_route;

	/* OK, we know where to send it, allocate and build IP header. */
	FUNC20(skb, sizeof(struct iphdr) + (inet_opt ? inet_opt->opt.optlen : 0));
	FUNC21(skb);
	iph = FUNC8(skb);
	*((__be16 *)iph) = FUNC4((4 << 12) | (5 << 8) | (tos & 0xff));
	if (FUNC7(sk, &rt->dst) && !skb->ignore_df)
		iph->frag_off = FUNC4(IP_DF);
	else
		iph->frag_off = 0;
	iph->ttl      = FUNC13(inet, &rt->dst);
	iph->protocol = sk->sk_protocol;
	FUNC6(iph, fl4);

	/* Transport layer set skb->h.foo itself. */

	if (inet_opt && inet_opt->opt.optlen) {
		iph->ihl += inet_opt->opt.optlen >> 2;
		FUNC10(skb, &inet_opt->opt, inet->inet_daddr, rt, 0);
	}

	FUNC12(net, skb, sk,
			     FUNC23(skb)->gso_segs ?: 1);

	/* TODO : should we use skb->sk here instead of sk ? */
	skb->priority = sk->sk_priority;
	skb->mark = sk->sk_mark;

	res = FUNC9(net, sk, skb);
	FUNC17();
	return res;

no_route:
	FUNC17();
	FUNC0(net, IPSTATS_MIB_OUTNOROUTES);
	FUNC14(skb);
	return -EHOSTUNREACH;
}