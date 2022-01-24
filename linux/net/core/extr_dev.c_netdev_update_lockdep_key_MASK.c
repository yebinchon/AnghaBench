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
struct netdev_queue {int /*<<< orphan*/  _xmit_lock; } ;
struct net_device {int num_tx_queues; int /*<<< orphan*/  qdisc_xmit_lock_key; int /*<<< orphan*/  addr_list_lock_key; int /*<<< orphan*/  addr_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netdev_queue* FUNC3 (struct net_device*,int) ; 

void FUNC4(struct net_device *dev)
{
	struct netdev_queue *queue;
	int i;

	FUNC2(&dev->qdisc_xmit_lock_key);
	FUNC2(&dev->addr_list_lock_key);

	FUNC0(&dev->qdisc_xmit_lock_key);
	FUNC0(&dev->addr_list_lock_key);

	FUNC1(&dev->addr_list_lock, &dev->addr_list_lock_key);
	for (i = 0; i < dev->num_tx_queues; i++) {
		queue = FUNC3(dev, i);

		FUNC1(&queue->_xmit_lock,
				  &dev->qdisc_xmit_lock_key);
	}
}