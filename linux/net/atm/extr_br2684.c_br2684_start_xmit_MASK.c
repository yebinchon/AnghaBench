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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  name; } ;
struct br2684_vcc {int /*<<< orphan*/  device; struct atm_vcc* atmvcc; } ;
struct br2684_dev {int dummy; } ;
struct atm_vcc {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 struct br2684_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*,struct br2684_vcc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  devs_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct br2684_vcc* FUNC6 (struct sk_buff*,struct br2684_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC14(struct sk_buff *skb,
				     struct net_device *dev)
{
	struct br2684_dev *brdev = FUNC0(dev);
	struct br2684_vcc *brvcc;
	struct atm_vcc *atmvcc;
	netdev_tx_t ret = NETDEV_TX_OK;

	FUNC7("skb_dst(skb)=%p\n", FUNC11(skb));
	FUNC8(&devs_lock);
	brvcc = FUNC6(skb, brdev);
	if (brvcc == NULL) {
		FUNC7("no vcc attached to dev %s\n", dev->name);
		dev->stats.tx_errors++;
		dev->stats.tx_carrier_errors++;
		/* netif_stop_queue(dev); */
		FUNC4(skb);
		goto out_devs;
	}
	atmvcc = brvcc->atmvcc;

	FUNC1(FUNC10(atmvcc));

	if (FUNC13(ATM_VF_RELEASED, &atmvcc->flags) ||
	    FUNC13(ATM_VF_CLOSE, &atmvcc->flags) ||
	    !FUNC13(ATM_VF_READY, &atmvcc->flags)) {
		dev->stats.tx_dropped++;
		FUNC4(skb);
		goto out;
	}

	if (FUNC12(FUNC10(atmvcc))) {
		FUNC5(brvcc->device);
		ret = NETDEV_TX_BUSY;
		goto out;
	}

	if (!FUNC3(skb, dev, brvcc)) {
		/*
		 * We should probably use netif_*_queue() here, but that
		 * involves added complication.  We need to walk before
		 * we can run.
		 *
		 * Don't free here! this pointer might be no longer valid!
		 */
		dev->stats.tx_errors++;
		dev->stats.tx_fifo_errors++;
	}
 out:
	FUNC2(FUNC10(atmvcc));
 out_devs:
	FUNC9(&devs_lock);
	return ret;
}