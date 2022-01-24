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
typedef  int /*<<< orphan*/  u16 ;
struct vlan_pcpu_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct sk_buff {scalar_t__ pkt_type; unsigned int data; scalar_t__ len; int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  priority; int /*<<< orphan*/  mac_len; int /*<<< orphan*/  vlan_proto; struct net_device* dev; } ;
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  h_dest; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  vlan_pcpu_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_UP ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_MULTICAST ; 
 scalar_t__ PACKET_OTHERHOST ; 
 int VLAN_FLAG_REORDER_HDR ; 
 scalar_t__ VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct vlan_pcpu_stats* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 TYPE_1__* FUNC16 (struct net_device*) ; 
 struct net_device* FUNC17 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC19 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC20(struct sk_buff **skbp)
{
	struct sk_buff *skb = *skbp;
	__be16 vlan_proto = skb->vlan_proto;
	u16 vlan_id = FUNC11(skb);
	struct net_device *vlan_dev;
	struct vlan_pcpu_stats *rx_stats;

	vlan_dev = FUNC17(skb->dev, vlan_proto, vlan_id);
	if (!vlan_dev)
		return false;

	skb = *skbp = FUNC10(skb, GFP_ATOMIC);
	if (FUNC15(!skb))
		return false;

	if (FUNC15(!(vlan_dev->flags & IFF_UP))) {
		FUNC3(skb);
		*skbp = NULL;
		return false;
	}

	skb->dev = vlan_dev;
	if (FUNC15(skb->pkt_type == PACKET_OTHERHOST)) {
		/* Our lower layer thinks this is not local, let's make sure.
		 * This allows the VLAN to have a different MAC than the
		 * underlying device, and still route correctly. */
		if (FUNC2(FUNC1(skb)->h_dest, vlan_dev->dev_addr))
			skb->pkt_type = PACKET_HOST;
	}

	if (!(FUNC16(vlan_dev)->flags & VLAN_FLAG_REORDER_HDR) &&
	    !FUNC5(vlan_dev) &&
	    !FUNC4(vlan_dev)) {
		unsigned int offset = skb->data - FUNC6(skb);

		/*
		 * vlan_insert_tag expect skb->data pointing to mac header.
		 * So change skb->data before calling it and change back to
		 * original position later
		 */
		FUNC8(skb, offset);
		skb = *skbp = FUNC19(skb, skb->vlan_proto,
						    skb->vlan_tci, skb->mac_len);
		if (!skb)
			return false;
		FUNC7(skb, offset + VLAN_HLEN);
		FUNC9(skb);
	}

	skb->priority = FUNC18(vlan_dev, skb->vlan_tci);
	FUNC0(skb);

	rx_stats = FUNC12(FUNC16(vlan_dev)->vlan_pcpu_stats);

	FUNC13(&rx_stats->syncp);
	rx_stats->rx_packets++;
	rx_stats->rx_bytes += skb->len;
	if (skb->pkt_type == PACKET_MULTICAST)
		rx_stats->rx_multicast++;
	FUNC14(&rx_stats->syncp);

	return true;
}