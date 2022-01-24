#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; struct net_device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_7__ {int flags; } ;
struct ieee802154_local {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  workqueue; struct sk_buff* tx_skb; TYPE_3__ hw; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_5__ {scalar_t__ xmit_async; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IEEE802154_FCS_LEN ; 
 int IEEE802154_HW_TX_OMIT_CKSUM ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct ieee802154_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC13(struct ieee802154_local *local, struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	int ret;

	if (!(local->hw.flags & IEEE802154_HW_TX_OMIT_CKSUM)) {
		struct sk_buff *nskb;
		u16 crc;

		if (FUNC12(FUNC11(skb) < IEEE802154_FCS_LEN)) {
			nskb = FUNC9(skb, 0, IEEE802154_FCS_LEN,
					       GFP_ATOMIC);
			if (FUNC6(nskb)) {
				FUNC0(skb);
				skb = nskb;
			} else {
				goto err_tx;
			}
		}

		crc = FUNC1(0, skb->data, skb->len);
		FUNC7(crc, FUNC10(skb, 2));
	}

	/* Stop the netif queue on each sub_if_data object. */
	FUNC3(&local->hw);

	/* async is priority, otherwise sync is fallback */
	if (local->ops->xmit_async) {
		ret = FUNC2(local, skb);
		if (ret) {
			FUNC4(&local->hw);
			goto err_tx;
		}

		dev->stats.tx_packets++;
		dev->stats.tx_bytes += skb->len;
	} else {
		local->tx_skb = skb;
		FUNC8(local->workqueue, &local->tx_work);
	}

	return NETDEV_TX_OK;

err_tx:
	FUNC5(skb);
	return NETDEV_TX_OK;
}