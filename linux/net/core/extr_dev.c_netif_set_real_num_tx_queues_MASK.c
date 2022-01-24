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
struct net_device {unsigned int real_num_tx_queues; unsigned int num_tx_queues; scalar_t__ reg_state; scalar_t__ num_tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 scalar_t__ NETREG_REGISTERED ; 
 scalar_t__ NETREG_UNREGISTERING ; 
 int FUNC1 (struct net_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct net_device *dev, unsigned int txq)
{
	bool disabling;
	int rc;

	disabling = txq < dev->real_num_tx_queues;

	if (txq < 1 || txq > dev->num_tx_queues)
		return -EINVAL;

	if (dev->reg_state == NETREG_REGISTERED ||
	    dev->reg_state == NETREG_UNREGISTERING) {
		FUNC0();

		rc = FUNC1(dev, dev->real_num_tx_queues,
						  txq);
		if (rc)
			return rc;

		if (dev->num_tc)
			FUNC3(dev, txq);

		dev->real_num_tx_queues = txq;

		if (disabling) {
			FUNC5();
			FUNC4(dev, txq);
#ifdef CONFIG_XPS
			netif_reset_xps_queues_gt(dev, txq);
#endif
		}
	} else {
		dev->real_num_tx_queues = txq;
	}

	return 0;
}