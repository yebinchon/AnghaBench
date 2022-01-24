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
struct netdev_rx_queue {int /*<<< orphan*/  xdp_rxq; struct net_device* dev; } ;
struct net_device {unsigned int num_rx_queues; struct netdev_rx_queue* _rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_RETRY_MAYFAIL ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_rx_queue*) ; 
 struct netdev_rx_queue* FUNC2 (size_t,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	unsigned int i, count = dev->num_rx_queues;
	struct netdev_rx_queue *rx;
	size_t sz = count * sizeof(*rx);
	int err = 0;

	FUNC0(count < 1);

	rx = FUNC2(sz, GFP_KERNEL | __GFP_RETRY_MAYFAIL);
	if (!rx)
		return -ENOMEM;

	dev->_rx = rx;

	for (i = 0; i < count; i++) {
		rx[i].dev = dev;

		/* XDP RX-queue setup */
		err = FUNC3(&rx[i].xdp_rxq, dev, i);
		if (err < 0)
			goto err_rxq_info;
	}
	return 0;

err_rxq_info:
	/* Rollback successful reg's and free other resources */
	while (i--)
		FUNC4(&rx[i].xdp_rxq);
	FUNC1(dev->_rx);
	dev->_rx = NULL;
	return err;
}