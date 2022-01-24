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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	/* SKB for netpoll still need to be mangled with the protocol-specific
	 * tag to be successfully transmitted
	 */
	if (FUNC4(FUNC3(dev)))
		return FUNC1(dev, skb);

	/* Queue the SKB for transmission on the parent interface, but
	 * do not modify its EtherType
	 */
	skb->dev = FUNC2(dev);
	FUNC0(skb);

	return NETDEV_TX_OK;
}