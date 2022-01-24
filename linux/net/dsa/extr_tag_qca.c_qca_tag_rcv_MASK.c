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
struct sk_buff {int data; int /*<<< orphan*/  dev; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int __be16 ;

/* Variables and functions */
 int ETH_HLEN ; 
 int QCA_HDR_LEN ; 
 int QCA_HDR_RECV_SOURCE_PORT_MASK ; 
 int QCA_HDR_RECV_VERSION_MASK ; 
 int QCA_HDR_RECV_VERSION_S ; 
 int QCA_HDR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct sk_buff *skb, struct net_device *dev,
				   struct packet_type *pt)
{
	u8 ver;
	int port;
	__be16 *phdr, hdr;

	if (FUNC5(!FUNC3(skb, QCA_HDR_LEN)))
		return NULL;

	/* The QCA header is added by the switch between src addr and Ethertype
	 * At this point, skb->data points to ethertype so header should be
	 * right before
	 */
	phdr = (__be16 *)(skb->data - 2);
	hdr = FUNC2(*phdr);

	/* Make sure the version is correct */
	ver = (hdr & QCA_HDR_RECV_VERSION_MASK) >> QCA_HDR_RECV_VERSION_S;
	if (FUNC5(ver != QCA_HDR_VERSION))
		return NULL;

	/* Remove QCA tag and recalculate checksum */
	FUNC4(skb, QCA_HDR_LEN);
	FUNC1(skb->data - ETH_HLEN, skb->data - ETH_HLEN - QCA_HDR_LEN,
		ETH_HLEN - QCA_HDR_LEN);

	/* Get source port information */
	port = (hdr & QCA_HDR_RECV_SOURCE_PORT_MASK);

	skb->dev = FUNC0(dev, 0, port);
	if (!skb->dev)
		return NULL;

	return skb;
}