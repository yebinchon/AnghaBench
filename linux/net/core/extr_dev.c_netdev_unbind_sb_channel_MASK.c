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
struct netdev_queue {struct net_device* sb_dev; } ;
struct net_device {size_t num_tx_queues; struct netdev_queue* _tx; int /*<<< orphan*/  prio_tc_map; int /*<<< orphan*/  tc_to_txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC2(struct net_device *dev,
			      struct net_device *sb_dev)
{
	struct netdev_queue *txq = &dev->_tx[dev->num_tx_queues];

#ifdef CONFIG_XPS
	netif_reset_xps_queues_gt(sb_dev, 0);
#endif
	FUNC0(sb_dev->tc_to_txq, 0, sizeof(sb_dev->tc_to_txq));
	FUNC0(sb_dev->prio_tc_map, 0, sizeof(sb_dev->prio_tc_map));

	while (txq-- != &dev->_tx[0]) {
		if (txq->sb_dev == sb_dev)
			txq->sb_dev = NULL;
	}
}