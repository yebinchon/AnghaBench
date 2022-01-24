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
struct rtnl_link_stats64 {unsigned long rx_dropped; unsigned long tx_dropped; unsigned long rx_nohandler; } ;
struct net_device_ops {int /*<<< orphan*/ * (* ndo_get_stats ) (struct net_device*) ;int /*<<< orphan*/  (* ndo_get_stats64 ) (struct net_device*,struct rtnl_link_stats64*) ;} ;
struct net_device {int /*<<< orphan*/  rx_nohandler; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  stats; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtnl_link_stats64*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtnl_link_stats64*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct rtnl_link_stats64*) ; 
 int /*<<< orphan*/ * FUNC4 (struct net_device*) ; 

struct rtnl_link_stats64 *FUNC5(struct net_device *dev,
					struct rtnl_link_stats64 *storage)
{
	const struct net_device_ops *ops = dev->netdev_ops;

	if (ops->ndo_get_stats64) {
		FUNC1(storage, 0, sizeof(*storage));
		ops->ndo_get_stats64(dev, storage);
	} else if (ops->ndo_get_stats) {
		FUNC2(storage, ops->ndo_get_stats(dev));
	} else {
		FUNC2(storage, &dev->stats);
	}
	storage->rx_dropped += (unsigned long)FUNC0(&dev->rx_dropped);
	storage->tx_dropped += (unsigned long)FUNC0(&dev->tx_dropped);
	storage->rx_nohandler += (unsigned long)FUNC0(&dev->rx_nohandler);
	return storage;
}