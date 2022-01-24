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
struct sk_buff {scalar_t__ pkt_type; } ;
struct packet_type {int dummy; } ;
struct net_device {int flags; scalar_t__ addr_len; } ;
struct neighbour_cb {int dummy; } ;
struct arphdr {scalar_t__ ar_hln; int ar_pln; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_NOARP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  NFPROTO_ARP ; 
 int /*<<< orphan*/  NF_ARP_IN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PACKET_LOOPBACK ; 
 scalar_t__ PACKET_OTHERHOST ; 
 struct arphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  arp_process ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *dev,
		   struct packet_type *pt, struct net_device *orig_dev)
{
	const struct arphdr *arp;

	/* do not tweak dropwatch on an ARP we will ignore */
	if (dev->flags & IFF_NOARP ||
	    skb->pkt_type == PACKET_OTHERHOST ||
	    skb->pkt_type == PACKET_LOOPBACK)
		goto consumeskb;

	skb = FUNC9(skb, GFP_ATOMIC);
	if (!skb)
		goto out_of_mem;

	/* ARP header, plus 2 device addresses, plus 2 IP addresses.  */
	if (!FUNC8(skb, FUNC3(dev)))
		goto freeskb;

	arp = FUNC2(skb);
	if (arp->ar_hln != dev->addr_len || arp->ar_pln != 4)
		goto freeskb;

	FUNC7(FUNC0(skb), 0, sizeof(struct neighbour_cb));

	return FUNC1(NFPROTO_ARP, NF_ARP_IN,
		       FUNC5(dev), NULL, skb, dev, NULL,
		       arp_process);

consumeskb:
	FUNC4(skb);
	return NET_RX_SUCCESS;
freeskb:
	FUNC6(skb);
out_of_mem:
	return NET_RX_DROP;
}