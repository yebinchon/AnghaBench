#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct udphdr {int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct sock {int /*<<< orphan*/  sk_rx_dst; int /*<<< orphan*/  sk_refcnt; } ;
struct sk_buff {scalar_t__ pkt_type; TYPE_1__* dev; int /*<<< orphan*/  destructor; struct sock* sk; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  protocol; } ;
struct in_device {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  inet_daddr; } ;
struct TYPE_5__ {int ifindex; } ;

/* Variables and functions */
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_MULTICAST ; 
 struct dst_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct in_device* FUNC1 (TYPE_1__*) ; 
 struct sock* FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct sock* FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct net* FUNC4 (TYPE_1__*) ; 
 struct dst_entry* FUNC5 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*) ; 
 TYPE_2__* FUNC7 (struct sock*) ; 
 int FUNC8 (struct in_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct in_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  sock_efree ; 
 struct udphdr* FUNC15 (struct sk_buff*) ; 

int FUNC16(struct sk_buff *skb)
{
	struct net *net = FUNC4(skb->dev);
	struct in_device *in_dev = NULL;
	const struct iphdr *iph;
	const struct udphdr *uh;
	struct sock *sk = NULL;
	struct dst_entry *dst;
	int dif = skb->dev->ifindex;
	int sdif = FUNC6(skb);
	int ours;

	/* validate the packet */
	if (!FUNC11(skb, FUNC14(skb) + sizeof(struct udphdr)))
		return 0;

	iph = FUNC9(skb);
	uh = FUNC15(skb);

	if (skb->pkt_type == PACKET_MULTICAST) {
		in_dev = FUNC1(skb->dev);

		if (!in_dev)
			return 0;

		ours = FUNC8(in_dev, iph->daddr, iph->saddr,
				       iph->protocol);
		if (!ours)
			return 0;

		sk = FUNC3(net, uh->dest, iph->daddr,
						   uh->source, iph->saddr,
						   dif, sdif);
	} else if (skb->pkt_type == PACKET_HOST) {
		sk = FUNC2(net, uh->dest, iph->daddr,
					     uh->source, iph->saddr, dif, sdif);
	}

	if (!sk || !FUNC12(&sk->sk_refcnt))
		return 0;

	skb->sk = sk;
	skb->destructor = sock_efree;
	dst = FUNC0(sk->sk_rx_dst);

	if (dst)
		dst = FUNC5(dst, 0);
	if (dst) {
		u32 itag = 0;

		/* set noref for now.
		 * any place which wants to hold dst has to call
		 * dst_hold_safe()
		 */
		FUNC13(skb, dst);

		/* for unconnected multicast sockets we need to validate
		 * the source on each packet
		 */
		if (!FUNC7(sk)->inet_daddr && in_dev)
			return FUNC10(skb, iph->daddr,
						     iph->saddr, iph->tos,
						     skb->dev, in_dev, &itag);
	}
	return 0;
}