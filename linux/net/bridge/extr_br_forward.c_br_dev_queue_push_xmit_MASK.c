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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ protocol; int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

int FUNC8(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	FUNC6(skb, ETH_HLEN);
	if (!FUNC4(skb->dev, skb))
		goto drop;

	FUNC1(skb);

	if (skb->ip_summed == CHECKSUM_PARTIAL &&
	    (skb->protocol == FUNC3(ETH_P_8021Q) ||
	     skb->protocol == FUNC3(ETH_P_8021AD))) {
		int depth;

		if (!FUNC0(skb, skb->protocol, &depth))
			goto drop;

		FUNC7(skb, depth);
	}

	FUNC2(skb);

	return 0;

drop:
	FUNC5(skb);
	return 0;
}