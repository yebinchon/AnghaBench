#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int len; int priority; int /*<<< orphan*/  dev; scalar_t__ ignore_df; int /*<<< orphan*/  mark; void* protocol; scalar_t__ sk; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {int hop_limit; struct in6_addr daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  nexthdr; void* payload_len; } ;
struct ipv6_txoptions {scalar_t__ opt_nflen; scalar_t__ opt_flen; } ;
struct ipv6_pinfo {int hop_limit; } ;
struct flowi6 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  flowi6_proto; struct in6_addr daddr; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IPSTATS_MIB_FRAGFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  dst_output ; 
 void* FUNC6 (int) ; 
 struct ipv6_pinfo* FUNC7 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct ipv6_pinfo const*) ; 
 int FUNC9 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipv6hdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flowi6*) ; 
 struct ipv6hdr* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int,struct flowi6*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct ipv6_txoptions*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct ipv6_txoptions*,int /*<<< orphan*/ *,struct in6_addr**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 struct sk_buff* FUNC18 (struct sock*,struct sk_buff*) ; 
 struct dst_entry* FUNC19 (struct sk_buff*) ; 
 unsigned int FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC23 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,scalar_t__) ; 
 struct net* FUNC26 (struct sock const*) ; 
 scalar_t__ FUNC27 (int) ; 

int FUNC28(const struct sock *sk, struct sk_buff *skb, struct flowi6 *fl6,
	     __u32 mark, struct ipv6_txoptions *opt, int tclass, u32 priority)
{
	struct net *net = FUNC26(sk);
	const struct ipv6_pinfo *np = FUNC7(sk);
	struct in6_addr *first_hop = &fl6->daddr;
	struct dst_entry *dst = FUNC19(skb);
	unsigned int head_room;
	struct ipv6hdr *hdr;
	u8  proto = fl6->flowi6_proto;
	int seg_len = skb->len;
	int hlimit = -1;
	u32 mtu;

	head_room = sizeof(struct ipv6hdr) + FUNC2(dst->dev);
	if (opt)
		head_room += opt->opt_nflen + opt->opt_flen;

	if (FUNC27(FUNC20(skb) < head_room)) {
		struct sk_buff *skb2 = FUNC23(skb, head_room);
		if (!skb2) {
			FUNC0(net, FUNC10(FUNC19(skb)),
				      IPSTATS_MIB_OUTDISCARDS);
			FUNC17(skb);
			return -ENOBUFS;
		}
		if (skb->sk)
			FUNC25(skb2, skb->sk);
		FUNC4(skb);
		skb = skb2;
	}

	if (opt) {
		seg_len += opt->opt_nflen + opt->opt_flen;

		if (opt->opt_flen)
			FUNC15(skb, opt, &proto);

		if (opt->opt_nflen)
			FUNC16(skb, opt, &proto, &first_hop,
					     &fl6->saddr);
	}

	FUNC22(skb, sizeof(struct ipv6hdr));
	FUNC24(skb);
	hdr = FUNC13(skb);

	/*
	 *	Fill in the IPv6 header
	 */
	if (np)
		hlimit = np->hop_limit;
	if (hlimit < 0)
		hlimit = FUNC9(dst);

	FUNC11(hdr, tclass, FUNC12(net, skb, fl6->flowlabel,
				FUNC8(net, np), fl6));

	hdr->payload_len = FUNC6(seg_len);
	hdr->nexthdr = proto;
	hdr->hop_limit = hlimit;

	hdr->saddr = fl6->saddr;
	hdr->daddr = *first_hop;

	skb->protocol = FUNC6(ETH_P_IPV6);
	skb->priority = priority;
	skb->mark = mark;

	mtu = FUNC5(dst);
	if ((skb->len <= mtu) || skb->ignore_df || FUNC21(skb)) {
		FUNC1(net, FUNC10(FUNC19(skb)),
			      IPSTATS_MIB_OUT, skb->len);

		/* if egress device is enslaved to an L3 master device pass the
		 * skb to its handler for processing
		 */
		skb = FUNC18((struct sock *)sk, skb);
		if (FUNC27(!skb))
			return 0;

		/* hooks should never assume socket lock is held.
		 * we promote our socket to non const
		 */
		return FUNC3(NFPROTO_IPV6, NF_INET_LOCAL_OUT,
			       net, (struct sock *)sk, skb, NULL, dst->dev,
			       dst_output);
	}

	skb->dev = dst->dev;
	/* ipv6_local_error() does not require socket lock,
	 * we promote our socket to non const
	 */
	FUNC14((struct sock *)sk, EMSGSIZE, fl6, mtu);

	FUNC0(net, FUNC10(FUNC19(skb)), IPSTATS_MIB_FRAGFAILS);
	FUNC17(skb);
	return -EMSGSIZE;
}