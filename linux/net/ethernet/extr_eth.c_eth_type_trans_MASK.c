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
struct sk_buff {int /*<<< orphan*/  pkt_type; scalar_t__ data; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  ETH_P_802_3 ; 
 int /*<<< orphan*/  ETH_P_XDSA ; 
 int /*<<< orphan*/  PACKET_BROADCAST ; 
 int /*<<< orphan*/  PACKET_MULTICAST ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*) ; 
 unsigned short* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int,unsigned short*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__be16 FUNC11(struct sk_buff *skb, struct net_device *dev)
{
	unsigned short _service_access_point;
	const unsigned short *sap;
	const struct ethhdr *eth;

	skb->dev = dev;
	FUNC9(skb);

	eth = (struct ethhdr *)skb->data;
	FUNC8(skb, ETH_HLEN);

	if (FUNC10(!FUNC2(eth->h_dest,
					      dev->dev_addr))) {
		if (FUNC10(FUNC4(eth->h_dest))) {
			if (FUNC2(eth->h_dest, dev->broadcast))
				skb->pkt_type = PACKET_BROADCAST;
			else
				skb->pkt_type = PACKET_MULTICAST;
		} else {
			skb->pkt_type = PACKET_OTHERHOST;
		}
	}

	/*
	 * Some variants of DSA tagging don't have an ethertype field
	 * at all, so we check here whether one of those tagging
	 * variants has been configured on the receiving interface,
	 * and if so, set skb->protocol without looking at the packet.
	 * The DSA tagging protocol may be able to decode some but not all
	 * traffic (for example only for management). In that case give it the
	 * option to filter the packets from which it can decode source port
	 * information.
	 */
	if (FUNC10(FUNC6(dev)) && FUNC0(skb, dev))
		return FUNC3(ETH_P_XDSA);

	if (FUNC5(FUNC1(eth->h_proto)))
		return eth->h_proto;

	/*
	 *      This is a magic hack to spot IPX packets. Older Novell breaks
	 *      the protocol design and runs IPX over 802.3 without an 802.2 LLC
	 *      layer. We look for FFFF which isn't a used 802.2 SSAP/DSAP. This
	 *      won't work for fault tolerant netware but does for the rest.
	 */
	sap = FUNC7(skb, 0, sizeof(*sap), &_service_access_point);
	if (sap && *sap == 0xFFFF)
		return FUNC3(ETH_P_802_3);

	/*
	 *      Real 802.2 LLC
	 */
	return FUNC3(ETH_P_802_2);
}