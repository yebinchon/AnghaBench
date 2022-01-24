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
typedef  int u8 ;
struct sk_buff {scalar_t__ protocol; int* data; } ;
struct net_device {int dummy; } ;
struct dsa_port {int index; TYPE_1__* ds; } ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int DSA_HLEN ; 
 int EDSA_HLEN ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int ETH_P_EDSA ; 
 struct dsa_port* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	struct dsa_port *dp = FUNC0(dev);
	u8 *edsa_header;

	/*
	 * Convert the outermost 802.1q tag to a DSA tag and prepend
	 * a DSA ethertype field is the packet is tagged, or insert
	 * a DSA ethertype plus DSA tag between the addresses and the
	 * current ethertype field if the packet is untagged.
	 */
	if (skb->protocol == FUNC1(ETH_P_8021Q)) {
		if (FUNC3(skb, DSA_HLEN) < 0)
			return NULL;
		FUNC4(skb, DSA_HLEN);

		FUNC2(skb->data, skb->data + DSA_HLEN, 2 * ETH_ALEN);

		/*
		 * Construct tagged FROM_CPU DSA tag from 802.1q tag.
		 */
		edsa_header = skb->data + 2 * ETH_ALEN;
		edsa_header[0] = (ETH_P_EDSA >> 8) & 0xff;
		edsa_header[1] = ETH_P_EDSA & 0xff;
		edsa_header[2] = 0x00;
		edsa_header[3] = 0x00;
		edsa_header[4] = 0x60 | dp->ds->index;
		edsa_header[5] = dp->index << 3;

		/*
		 * Move CFI field from byte 6 to byte 5.
		 */
		if (edsa_header[6] & 0x10) {
			edsa_header[5] |= 0x01;
			edsa_header[6] &= ~0x10;
		}
	} else {
		if (FUNC3(skb, EDSA_HLEN) < 0)
			return NULL;
		FUNC4(skb, EDSA_HLEN);

		FUNC2(skb->data, skb->data + EDSA_HLEN, 2 * ETH_ALEN);

		/*
		 * Construct untagged FROM_CPU DSA tag.
		 */
		edsa_header = skb->data + 2 * ETH_ALEN;
		edsa_header[0] = (ETH_P_EDSA >> 8) & 0xff;
		edsa_header[1] = ETH_P_EDSA & 0xff;
		edsa_header[2] = 0x00;
		edsa_header[3] = 0x00;
		edsa_header[4] = 0x40 | dp->ds->index;
		edsa_header[5] = dp->index << 3;
		edsa_header[6] = 0x00;
		edsa_header[7] = 0x00;
	}

	return skb;
}