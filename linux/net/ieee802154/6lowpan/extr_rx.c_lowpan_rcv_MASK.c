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
struct sk_buff {scalar_t__ pkt_type; struct net_device* dev; } ;
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ type; TYPE_1__* ieee802154_ptr; } ;
struct TYPE_2__ {struct net_device* lowpan_dev; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE802154 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_DROP ; 
 scalar_t__ PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *wdev,
		      struct packet_type *pt, struct net_device *orig_wdev)
{
	struct net_device *ldev;

	if (wdev->type != ARPHRD_IEEE802154 ||
	    skb->pkt_type == PACKET_OTHERHOST ||
	    !FUNC4(skb))
		goto drop;

	ldev = wdev->ieee802154_ptr->lowpan_dev;
	if (!ldev || !FUNC5(ldev))
		goto drop;

	/* Replacing skb->dev and followed rx handlers will manipulate skb. */
	skb = FUNC7(skb, GFP_ATOMIC);
	if (!skb)
		goto out;
	skb->dev = ldev;

	/* When receive frag1 it's likely that we manipulate the buffer.
	 * When recevie iphc we manipulate the data buffer. So we need
	 * to unshare the buffer.
	 */
	if (FUNC2(*FUNC6(skb)) ||
	    FUNC3(*FUNC6(skb))) {
		skb = FUNC8(skb, GFP_ATOMIC);
		if (!skb)
			goto out;
	}

	return FUNC1(skb);

drop:
	FUNC0(skb);
out:
	return NET_RX_DROP;
}