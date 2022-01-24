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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct net_device {int /*<<< orphan*/  tx_dropped; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static struct sk_buff *FUNC17(struct sk_buff *skb, struct net_device *dev, bool *again)
{
	netdev_features_t features;

	features = FUNC6(skb);
	skb = FUNC15(skb, features);
	if (FUNC14(!skb))
		goto out_null;

	skb = FUNC7(skb, dev);
	if (FUNC14(!skb))
		goto out_null;

	if (FUNC5(skb, features)) {
		struct sk_buff *segs;

		segs = FUNC10(skb, features);
		if (FUNC0(segs)) {
			goto out_kfree_skb;
		} else if (segs) {
			FUNC3(skb);
			skb = segs;
		}
	} else {
		if (FUNC11(skb, features) &&
		    FUNC1(skb))
			goto out_kfree_skb;

		/* If packet is not checksummed and device does not
		 * support checksumming for this protocol, complete
		 * checksumming here.
		 */
		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			if (skb->encapsulation)
				FUNC12(skb,
							       FUNC8(skb));
			else
				FUNC13(skb,
							 FUNC8(skb));
			if (FUNC9(skb, features))
				goto out_kfree_skb;
		}
	}

	skb = FUNC16(skb, features, again);

	return skb;

out_kfree_skb:
	FUNC4(skb);
out_null:
	FUNC2(&dev->tx_dropped);
	return NULL;
}