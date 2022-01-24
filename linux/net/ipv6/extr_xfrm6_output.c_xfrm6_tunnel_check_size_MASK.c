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
struct sk_buff {int len; scalar_t__ sk; int /*<<< orphan*/  protocol; int /*<<< orphan*/  dev; scalar_t__ ignore_df; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int IPV6_MIN_MTU ; 
 int FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb)
{
	int mtu, ret = 0;
	struct dst_entry *dst = FUNC4(skb);

	if (skb->ignore_df)
		goto out;

	mtu = FUNC0(dst);
	if (mtu < IPV6_MIN_MTU)
		mtu = IPV6_MIN_MTU;

	if ((!FUNC6(skb) && skb->len > mtu) ||
	    (FUNC6(skb) &&
	     !FUNC5(skb, FUNC3(skb)))) {
		skb->dev = dst->dev;
		skb->protocol = FUNC1(ETH_P_IPV6);

		if (FUNC7(skb))
			FUNC8(skb, mtu);
		else if (skb->sk)
			FUNC9(skb, mtu);
		else
			FUNC2(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
		ret = -EMSGSIZE;
	}
out:
	return ret;
}