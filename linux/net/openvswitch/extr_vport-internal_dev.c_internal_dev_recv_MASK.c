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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; struct net_device* dev; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {int flags; int /*<<< orphan*/  tstats; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int IFF_UP ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcpu_sw_netstats* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb)
{
	struct net_device *netdev = skb->dev;
	struct pcpu_sw_netstats *stats;

	if (FUNC11(!(netdev->flags & IFF_UP))) {
		FUNC2(skb);
		netdev->stats.rx_dropped++;
		return NETDEV_TX_OK;
	}

	FUNC6(skb);
	FUNC4(skb);
	FUNC5(skb);

	skb->pkt_type = PACKET_HOST;
	skb->protocol = FUNC1(skb, netdev);
	FUNC7(skb, FUNC0(skb), ETH_HLEN);

	stats = FUNC8(netdev->tstats);
	FUNC9(&stats->syncp);
	stats->rx_packets++;
	stats->rx_bytes += skb->len;
	FUNC10(&stats->syncp);

	FUNC3(skb);
	return NETDEV_TX_OK;
}