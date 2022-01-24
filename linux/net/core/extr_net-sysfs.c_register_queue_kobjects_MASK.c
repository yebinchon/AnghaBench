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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct net_device {int real_num_rx_queues; int real_num_tx_queues; int /*<<< orphan*/  queues_kset; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int,int) ; 
 int FUNC3 (struct net_device*,int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	int error = 0, txq = 0, rxq = 0, real_rx = 0, real_tx = 0;

#ifdef CONFIG_SYSFS
	dev->queues_kset = kset_create_and_add("queues",
					       NULL, &dev->dev.kobj);
	if (!dev->queues_kset)
		return -ENOMEM;
	real_rx = dev->real_num_rx_queues;
#endif
	real_tx = dev->real_num_tx_queues;

	error = FUNC2(dev, 0, real_rx);
	if (error)
		goto error;
	rxq = real_rx;

	error = FUNC3(dev, 0, real_tx);
	if (error)
		goto error;
	txq = real_tx;

	return 0;

error:
	FUNC3(dev, txq, 0);
	FUNC2(dev, rxq, 0);
#ifdef CONFIG_SYSFS
	kset_unregister(dev->queues_kset);
#endif
	return error;
}