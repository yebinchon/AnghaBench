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
struct sk_buff {scalar_t__ pkt_type; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE802154 ; 
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int NET_RX_DROP ; 
 scalar_t__ PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct net_device *dev,
			  struct packet_type *pt, struct net_device *orig_dev)
{
	if (!FUNC5(dev))
		goto drop;
	FUNC6("got frame, type %d, dev %p\n", dev->type, dev);
#ifdef DEBUG
	print_hex_dump_bytes("ieee802154_rcv ",
			     DUMP_PREFIX_NONE, skb->data, skb->len);
#endif

	if (!FUNC4(FUNC0(dev), &init_net))
		goto drop;

	FUNC2(dev, skb);

	if (dev->type != ARPHRD_IEEE802154)
		goto drop;

	if (skb->pkt_type != PACKET_OTHERHOST)
		return FUNC1(dev, skb);

drop:
	FUNC3(skb);
	return NET_RX_DROP;
}