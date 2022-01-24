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
struct sk_buff {int /*<<< orphan*/  skb_iif; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct ieee802154_sub_if_data {int /*<<< orphan*/  local; int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 struct ieee802154_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 

netdev_tx_t
FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	struct ieee802154_sub_if_data *sdata = FUNC0(dev);
	int rc;

	/* TODO we should move it to wpan_dev_hard_header and dev_hard_header
	 * functions. The reason is wireshark will show a mac header which is
	 * with security fields but the payload is not encrypted.
	 */
	rc = FUNC3(&sdata->sec, skb);
	if (rc) {
		FUNC4(dev, "encryption failed: %i\n", rc);
		FUNC2(skb);
		return NETDEV_TX_OK;
	}

	skb->skb_iif = dev->ifindex;

	return FUNC1(sdata->local, skb);
}