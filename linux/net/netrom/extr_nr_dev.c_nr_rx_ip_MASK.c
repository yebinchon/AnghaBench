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
struct sk_buff {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  network_header; int /*<<< orphan*/  mac_header; struct net_device* dev; int /*<<< orphan*/  protocol; scalar_t__ len; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

int FUNC4(struct sk_buff *skb, struct net_device *dev)
{
	struct net_device_stats *stats = &dev->stats;

	if (!FUNC1(dev)) {
		stats->rx_dropped++;
		return 0;
	}

	stats->rx_packets++;
	stats->rx_bytes += skb->len;

	skb->protocol = FUNC0(ETH_P_IP);

	/* Spoof incoming device */
	skb->dev      = dev;
	skb->mac_header = skb->network_header;
	FUNC3(skb);
	skb->pkt_type = PACKET_HOST;

	FUNC2(skb);

	return 1;
}