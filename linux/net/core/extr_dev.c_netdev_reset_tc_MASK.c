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
struct net_device {int /*<<< orphan*/  prio_tc_map; int /*<<< orphan*/  tc_to_txq; scalar_t__ num_tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC3(struct net_device *dev)
{
#ifdef CONFIG_XPS
	netif_reset_xps_queues_gt(dev, 0);
#endif
	FUNC1(dev);

	/* Reset TC configuration of device */
	dev->num_tc = 0;
	FUNC0(dev->tc_to_txq, 0, sizeof(dev->tc_to_txq));
	FUNC0(dev->prio_tc_map, 0, sizeof(dev->prio_tc_map));
}