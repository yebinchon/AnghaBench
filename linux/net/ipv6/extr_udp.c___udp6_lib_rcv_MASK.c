#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct udphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; int /*<<< orphan*/  check; int /*<<< orphan*/  len; } ;
struct udp_table {int dummy; } ;
struct sock {struct dst_entry* sk_rx_dst; } ;
struct sk_buff {int len; int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_4__ {struct in6_addr daddr; struct in6_addr saddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  no_check6_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_PORT_UNREACH ; 
 int IPPROTO_UDP ; 
 int IPPROTO_UDPLITE ; 
 int /*<<< orphan*/  UDP_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 int /*<<< orphan*/  UDP_MIB_NOPORTS ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int) ; 
 struct sock* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*) ; 
 int FUNC2 (struct net*,struct sk_buff*,struct in6_addr const*,struct in6_addr const*,struct udp_table*,int) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct in6_addr const*) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,struct in6_addr const*,int,int,int,struct in6_addr const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int) ; 
 struct dst_entry* FUNC12 (struct sk_buff*) ; 
 struct sock* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (struct sk_buff*,struct udphdr*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,struct dst_entry*) ; 
 int FUNC18 (struct sock*,struct sk_buff*,struct udphdr*) ; 
 struct udphdr* FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 TYPE_1__* FUNC21 (struct sock*) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC24(struct sk_buff *skb, struct udp_table *udptable,
		   int proto)
{
	const struct in6_addr *saddr, *daddr;
	struct net *net = FUNC3(skb->dev);
	struct udphdr *uh;
	struct sock *sk;
	u32 ulen = 0;

	if (!FUNC10(skb, sizeof(struct udphdr)))
		goto discard;

	saddr = &FUNC6(skb)->saddr;
	daddr = &FUNC6(skb)->daddr;
	uh = FUNC19(skb);

	ulen = FUNC9(uh->len);
	if (ulen > skb->len)
		goto short_packet;

	if (proto == IPPROTO_UDP) {
		/* UDP validates ulen. */

		/* Check for jumbo payload */
		if (ulen == 0)
			ulen = skb->len;

		if (ulen < sizeof(*uh))
			goto short_packet;

		if (ulen < skb->len) {
			if (FUNC11(skb, ulen))
				goto short_packet;
			saddr = &FUNC6(skb)->saddr;
			daddr = &FUNC6(skb)->daddr;
			uh = FUNC19(skb);
		}
	}

	if (FUNC15(skb, uh, proto))
		goto csum_error;

	/* Check if the socket is already available, e.g. due to early demux */
	sk = FUNC13(skb);
	if (sk) {
		struct dst_entry *dst = FUNC12(skb);
		int ret;

		if (FUNC22(sk->sk_rx_dst != dst))
			FUNC17(sk, dst);

		if (!uh->check && !FUNC21(sk)->no_check6_rx) {
			FUNC14(sk);
			goto report_csum_error;
		}

		ret = FUNC18(sk, skb, uh);
		FUNC14(sk);
		return ret;
	}

	/*
	 *	Multicast receive code
	 */
	if (FUNC5(daddr))
		return FUNC2(net, skb,
				saddr, daddr, udptable, proto);

	/* Unicast */
	sk = FUNC1(skb, uh->source, uh->dest, udptable);
	if (sk) {
		if (!uh->check && !FUNC21(sk)->no_check6_rx)
			goto report_csum_error;
		return FUNC18(sk, skb, uh);
	}

	if (!uh->check)
		goto report_csum_error;

	if (!FUNC23(NULL, XFRM_POLICY_IN, skb))
		goto discard;

	if (FUNC20(skb))
		goto csum_error;

	FUNC0(net, UDP_MIB_NOPORTS, proto == IPPROTO_UDPLITE);
	FUNC4(skb, ICMPV6_DEST_UNREACH, ICMPV6_PORT_UNREACH, 0);

	FUNC7(skb);
	return 0;

short_packet:
	FUNC8("UDP%sv6: short packet: From [%pI6c]:%u %d/%d to [%pI6c]:%u\n",
			    proto == IPPROTO_UDPLITE ? "-Lite" : "",
			    saddr, FUNC9(uh->source),
			    ulen, skb->len,
			    daddr, FUNC9(uh->dest));
	goto discard;

report_csum_error:
	FUNC16(skb);
csum_error:
	FUNC0(net, UDP_MIB_CSUMERRORS, proto == IPPROTO_UDPLITE);
discard:
	FUNC0(net, UDP_MIB_INERRORS, proto == IPPROTO_UDPLITE);
	FUNC7(skb);
	return 0;
}