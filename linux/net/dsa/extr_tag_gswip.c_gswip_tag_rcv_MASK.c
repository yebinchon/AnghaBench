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
typedef  int u8 ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  data; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GSWIP_RX_HEADER_LEN ; 
 int GSWIP_RX_SPPID_MASK ; 
 int GSWIP_RX_SPPID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct sk_buff *skb,
				     struct net_device *dev,
				     struct packet_type *pt)
{
	int port;
	u8 *gswip_tag;

	if (FUNC3(!FUNC1(skb, GSWIP_RX_HEADER_LEN)))
		return NULL;

	gswip_tag = skb->data - ETH_HLEN;

	/* Get source port information */
	port = (gswip_tag[7] & GSWIP_RX_SPPID_MASK) >> GSWIP_RX_SPPID_SHIFT;
	skb->dev = FUNC0(dev, 0, port);
	if (!skb->dev)
		return NULL;

	/* remove GSWIP tag */
	FUNC2(skb, GSWIP_RX_HEADER_LEN);

	return skb;
}