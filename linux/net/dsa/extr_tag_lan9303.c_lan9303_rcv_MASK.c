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
typedef  scalar_t__ u16 ;
struct sk_buff {int data; int offload_fwd_mark; int /*<<< orphan*/  dev; } ;
struct packet_type {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ LAN9303_TAG_LEN ; 
 scalar_t__ LAN9303_TAG_RX_TRAPPED_TO_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct sk_buff *skb, struct net_device *dev,
				   struct packet_type *pt)
{
	u16 *lan9303_tag;
	u16 lan9303_tag1;
	unsigned int source_port;

	if (FUNC7(!FUNC5(skb, LAN9303_TAG_LEN))) {
		FUNC0(&dev->dev,
				     "Dropping packet, cannot pull\n");
		return NULL;
	}

	/* '->data' points into the middle of our special VLAN tag information:
	 *
	 * ~ MAC src   | 0x81 | 0x00 | 0xyy | 0xzz | ether type
	 *                           ^
	 *                        ->data
	 */
	lan9303_tag = (u16 *)(skb->data - 2);

	if (lan9303_tag[0] != FUNC2(ETH_P_8021Q)) {
		FUNC0(&dev->dev, "Dropping packet due to invalid VLAN marker\n");
		return NULL;
	}

	lan9303_tag1 = FUNC4(lan9303_tag[1]);
	source_port = lan9303_tag1 & 0x3;

	skb->dev = FUNC1(dev, 0, source_port);
	if (!skb->dev) {
		FUNC0(&dev->dev, "Dropping packet due to invalid source port\n");
		return NULL;
	}

	/* remove the special VLAN tag between the MAC addresses
	 * and the current ethertype field.
	 */
	FUNC6(skb, 2 + 2);
	FUNC3(skb->data - ETH_HLEN, skb->data - (ETH_HLEN + LAN9303_TAG_LEN),
		2 * ETH_ALEN);
	skb->offload_fwd_mark = !(lan9303_tag1 & LAN9303_TAG_RX_TRAPPED_TO_CPU);

	return skb;
}