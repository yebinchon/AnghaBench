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
struct tcphdr {int doff; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {int /*<<< orphan*/  sk_rx_dst; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ skb_iif; int /*<<< orphan*/  destructor; struct sock* sk; int /*<<< orphan*/  dev; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ rx_dst_ifindex; } ;

/* Variables and functions */
 scalar_t__ PACKET_HOST ; 
 struct dst_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC3 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  sock_edemux ; 
 int /*<<< orphan*/  tcp_hashinfo ; 
 struct tcphdr* FUNC12 (struct sk_buff*) ; 

int FUNC13(struct sk_buff *skb)
{
	const struct iphdr *iph;
	const struct tcphdr *th;
	struct sock *sk;

	if (skb->pkt_type != PACKET_HOST)
		return 0;

	if (!FUNC8(skb, FUNC11(skb) + sizeof(struct tcphdr)))
		return 0;

	iph = FUNC6(skb);
	th = FUNC12(skb);

	if (th->doff < sizeof(struct tcphdr) / 4)
		return 0;

	sk = FUNC1(FUNC2(skb->dev), &tcp_hashinfo,
				       iph->saddr, th->source,
				       iph->daddr, FUNC7(th->dest),
				       skb->skb_iif, FUNC4(skb));
	if (sk) {
		skb->sk = sk;
		skb->destructor = sock_edemux;
		if (FUNC9(sk)) {
			struct dst_entry *dst = FUNC0(sk->sk_rx_dst);

			if (dst)
				dst = FUNC3(dst, 0);
			if (dst &&
			    FUNC5(sk)->rx_dst_ifindex == skb->skb_iif)
				FUNC10(skb, dst);
		}
	}
	return 0;
}