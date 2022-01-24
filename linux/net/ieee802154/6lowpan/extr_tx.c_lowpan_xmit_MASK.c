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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {scalar_t__ needed_headroom; scalar_t__ needed_tailroom; TYPE_1__ stats; } ;
struct ieee802154_hdr {int dummy; } ;
typedef  scalar_t__ netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPV6_MIN_MTU ; 
 scalar_t__ NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct ieee802154_hdr*) ; 
 int FUNC4 (struct ieee802154_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 TYPE_2__* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct sk_buff*,struct net_device*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,struct net_device*,struct ieee802154_hdr*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct sk_buff* FUNC11 (struct sk_buff*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 struct sk_buff* FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

netdev_tx_t FUNC18(struct sk_buff *skb, struct net_device *ldev)
{
	struct ieee802154_hdr wpan_hdr;
	int max_single, ret;
	u16 dgram_size, dgram_offset;

	FUNC10("package xmit\n");

	FUNC0(skb->len > IPV6_MIN_MTU);

	/* We must take a copy of the skb before we modify/replace the ipv6
	 * header as the header could be used elsewhere
	 */
	if (FUNC17(FUNC12(skb) < ldev->needed_headroom ||
		     FUNC15(skb) < ldev->needed_tailroom)) {
		struct sk_buff *nskb;

		nskb = FUNC11(skb, ldev->needed_headroom,
				       ldev->needed_tailroom, GFP_ATOMIC);
		if (FUNC6(nskb)) {
			FUNC1(skb);
			skb = nskb;
		} else {
			FUNC5(skb);
			return NET_XMIT_DROP;
		}
	} else {
		skb = FUNC16(skb, GFP_ATOMIC);
		if (!skb)
			return NET_XMIT_DROP;
	}

	ret = FUNC8(skb, ldev, &dgram_size, &dgram_offset);
	if (ret < 0) {
		FUNC5(skb);
		return NET_XMIT_DROP;
	}

	if (FUNC3(skb, &wpan_hdr) < 0) {
		FUNC5(skb);
		return NET_XMIT_DROP;
	}

	max_single = FUNC4(&wpan_hdr);

	if (FUNC14(skb) - FUNC13(skb) <= max_single) {
		skb->dev = FUNC7(ldev)->wdev;
		ldev->stats.tx_packets++;
		ldev->stats.tx_bytes += dgram_size;
		return FUNC2(skb);
	} else {
		netdev_tx_t rc;

		FUNC10("frame is too big, fragmentation is needed\n");
		rc = FUNC9(skb, ldev, &wpan_hdr, dgram_size,
					    dgram_offset);

		return rc < 0 ? NET_XMIT_DROP : rc;
	}
}