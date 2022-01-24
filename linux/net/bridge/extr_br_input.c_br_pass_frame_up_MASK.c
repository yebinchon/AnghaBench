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
struct sk_buff {struct net_device* dev; scalar_t__ len; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int flags; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  stats; } ;
struct TYPE_2__ {struct net_device* brdev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  BR_MCAST_DIR_TX ; 
 int IFF_PROMISC ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  NFPROTO_BRIDGE ; 
 int /*<<< orphan*/  NF_BR_LOCAL_IN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge_vlan_group*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct net_bridge*,int /*<<< orphan*/ *,struct net_bridge_vlan_group*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  br_netif_receive_skb ; 
 struct net_bridge_vlan_group* FUNC6 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct net_bridge* FUNC9 (struct net_device*) ; 
 struct pcpu_sw_netstats* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb)
{
	struct net_device *indev, *brdev = FUNC0(skb)->brdev;
	struct net_bridge *br = FUNC9(brdev);
	struct net_bridge_vlan_group *vg;
	struct pcpu_sw_netstats *brstats = FUNC10(br->stats);

	FUNC11(&brstats->syncp);
	brstats->rx_packets++;
	brstats->rx_bytes += skb->len;
	FUNC12(&brstats->syncp);

	vg = FUNC6(br);
	/* Bridge is just like any other port.  Make sure the
	 * packet is allowed except in promisc modue when someone
	 * may be running packet capture.
	 */
	if (!(brdev->flags & IFF_PROMISC) &&
	    !FUNC2(vg, skb)) {
		FUNC8(skb);
		return NET_RX_DROP;
	}

	indev = skb->dev;
	skb->dev = brdev;
	skb = FUNC3(br, NULL, vg, skb);
	if (!skb)
		return NET_RX_DROP;
	/* update the multicast stats if the packet is IGMP/MLD */
	FUNC4(br, NULL, skb, FUNC5(skb),
			   BR_MCAST_DIR_TX);

	return FUNC1(NFPROTO_BRIDGE, NF_BR_LOCAL_IN,
		       FUNC7(indev), NULL, skb, indev, NULL,
		       br_netif_receive_skb);
}