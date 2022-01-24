#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; int /*<<< orphan*/  len; } ;
struct udp_table {int dummy; } ;
struct sock {struct dst_entry* sk_rx_dst; } ;
struct sk_buff {unsigned short len; int /*<<< orphan*/  dev; } ;
struct rtable {int rt_flags; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_PORT_UNREACH ; 
 int IPPROTO_UDP ; 
 int IPPROTO_UDPLITE ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  UDP_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 int /*<<< orphan*/  UDP_MIB_NOPORTS ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int) ; 
 struct sock* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*) ; 
 int FUNC2 (struct net*,struct sk_buff*,struct udphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*,int) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ *,unsigned short,unsigned short,unsigned short,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 unsigned short FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*,unsigned short) ; 
 struct dst_entry* FUNC12 (struct sk_buff*) ; 
 struct rtable* FUNC13 (struct sk_buff*) ; 
 struct sock* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 scalar_t__ FUNC16 (struct sk_buff*,struct udphdr*,int) ; 
 struct udphdr* FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,struct dst_entry*) ; 
 int FUNC20 (struct sock*,struct sk_buff*,struct udphdr*) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC23(struct sk_buff *skb, struct udp_table *udptable,
		   int proto)
{
	struct sock *sk;
	struct udphdr *uh;
	unsigned short ulen;
	struct rtable *rt = FUNC13(skb);
	__be32 saddr, daddr;
	struct net *net = FUNC3(skb->dev);

	/*
	 *  Validate the packet.
	 */
	if (!FUNC10(skb, sizeof(struct udphdr)))
		goto drop;		/* No space for header. */

	uh   = FUNC17(skb);
	ulen = FUNC9(uh->len);
	saddr = FUNC5(skb)->saddr;
	daddr = FUNC5(skb)->daddr;

	if (ulen > skb->len)
		goto short_packet;

	if (proto == IPPROTO_UDP) {
		/* UDP validates ulen. */
		if (ulen < sizeof(*uh) || FUNC11(skb, ulen))
			goto short_packet;
		uh = FUNC17(skb);
	}

	if (FUNC16(skb, uh, proto))
		goto csum_error;

	sk = FUNC14(skb);
	if (sk) {
		struct dst_entry *dst = FUNC12(skb);
		int ret;

		if (FUNC21(sk->sk_rx_dst != dst))
			FUNC19(sk, dst);

		ret = FUNC20(sk, skb, uh);
		FUNC15(sk);
		return ret;
	}

	if (rt->rt_flags & (RTCF_BROADCAST|RTCF_MULTICAST))
		return FUNC2(net, skb, uh,
						saddr, daddr, udptable, proto);

	sk = FUNC1(skb, uh->source, uh->dest, udptable);
	if (sk)
		return FUNC20(sk, skb, uh);

	if (!FUNC22(NULL, XFRM_POLICY_IN, skb))
		goto drop;
	FUNC8(skb);

	/* No socket. Drop packet silently, if checksum is wrong */
	if (FUNC18(skb))
		goto csum_error;

	FUNC0(net, UDP_MIB_NOPORTS, proto == IPPROTO_UDPLITE);
	FUNC4(skb, ICMP_DEST_UNREACH, ICMP_PORT_UNREACH, 0);

	/*
	 * Hmm.  We got an UDP packet to a port to which we
	 * don't wanna listen.  Ignore it.
	 */
	FUNC6(skb);
	return 0;

short_packet:
	FUNC7("UDP%s: short packet: From %pI4:%u %d/%d to %pI4:%u\n",
			    proto == IPPROTO_UDPLITE ? "Lite" : "",
			    &saddr, FUNC9(uh->source),
			    ulen, skb->len,
			    &daddr, FUNC9(uh->dest));
	goto drop;

csum_error:
	/*
	 * RFC1122: OK.  Discards the bad packet silently (as far as
	 * the network is concerned, anyway) as per 4.1.3.4 (MUST).
	 */
	FUNC7("UDP%s: bad checksum. From %pI4:%u to %pI4:%u ulen %d\n",
			    proto == IPPROTO_UDPLITE ? "Lite" : "",
			    &saddr, FUNC9(uh->source), &daddr, FUNC9(uh->dest),
			    ulen);
	FUNC0(net, UDP_MIB_CSUMERRORS, proto == IPPROTO_UDPLITE);
drop:
	FUNC0(net, UDP_MIB_INERRORS, proto == IPPROTO_UDPLITE);
	FUNC6(skb);
	return 0;
}