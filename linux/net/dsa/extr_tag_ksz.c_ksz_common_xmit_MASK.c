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
struct sk_buff {scalar_t__ len; scalar_t__ head; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETH_ZLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ FUNC0 (struct sk_buff*,scalar_t__,int) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 int FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct sk_buff *skb,
				       struct net_device *dev, int len)
{
	struct sk_buff *nskb;
	int padlen;

	padlen = (skb->len >= ETH_ZLEN) ? 0 : ETH_ZLEN - skb->len;

	if (FUNC11(skb) >= padlen + len) {
		/* Let dsa_slave_xmit() free skb */
		if (FUNC0(skb, skb->len + padlen, false))
			return NULL;

		nskb = skb;
	} else {
		nskb = FUNC1(NET_IP_ALIGN + skb->len +
				 padlen + len, GFP_ATOMIC);
		if (!nskb)
			return NULL;
		FUNC7(nskb, NET_IP_ALIGN);

		FUNC8(nskb);
		FUNC9(nskb,
				       FUNC4(skb) - skb->head);
		FUNC10(nskb,
					 FUNC12(skb) - skb->head);
		FUNC3(skb, FUNC5(nskb, skb->len));

		/* Let skb_put_padto() free nskb, and let dsa_slave_xmit() free
		 * skb
		 */
		if (FUNC6(nskb, nskb->len + padlen))
			return NULL;

		FUNC2(skb);
	}

	return nskb;
}