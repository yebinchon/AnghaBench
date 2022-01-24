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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int BPF_F_INGRESS ; 
 int FUNC0 (struct net_device*,struct sk_buff*) ; 
 int FUNC1 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 unsigned int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev,
				 u32 flags)
{
	unsigned int mlen = FUNC5(skb);

	if (mlen) {
		FUNC2(skb, mlen);

		/* At ingress, the mac header has already been pulled once.
		 * At egress, skb_pospull_rcsum has to be done in case that
		 * the skb is originated from ingress (i.e. a forwarded skb)
		 * to ensure that rcsum starts at net header.
		 */
		if (!FUNC3(skb))
			FUNC7(skb, FUNC4(skb), mlen);
	}
	FUNC6(skb);
	FUNC8(skb);
	return flags & BPF_F_INGRESS ?
	       FUNC0(dev, skb) : FUNC1(dev, skb);
}