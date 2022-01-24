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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  xfrm4_rcv_encap_finish2 ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct net *net, struct sock *sk,
					 struct sk_buff *skb)
{
	if (!FUNC3(skb)) {
		const struct iphdr *iph = FUNC0(skb);

		if (FUNC1(skb, iph->daddr, iph->saddr,
					 iph->tos, skb->dev))
			goto drop;
	}

	if (FUNC4(skb, xfrm4_rcv_encap_finish2))
		goto drop;

	return 0;
drop:
	FUNC2(skb);
	return NET_RX_DROP;
}