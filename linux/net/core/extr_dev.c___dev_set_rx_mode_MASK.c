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
struct net_device_ops {int /*<<< orphan*/  (* ndo_set_rx_mode ) (struct net_device*) ;} ;
struct net_device {int flags; int priv_flags; int uc_promisc; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int IFF_UNICAST_FLT ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev)
{
	const struct net_device_ops *ops = dev->netdev_ops;

	/* dev_open will call this function so the list will stay sane. */
	if (!(dev->flags&IFF_UP))
		return;

	if (!FUNC2(dev))
		return;

	if (!(dev->priv_flags & IFF_UNICAST_FLT)) {
		/* Unicast addresses changes may only happen under the rtnl,
		 * therefore calling __dev_set_promiscuity here is safe.
		 */
		if (!FUNC1(dev) && !dev->uc_promisc) {
			FUNC0(dev, 1, false);
			dev->uc_promisc = true;
		} else if (FUNC1(dev) && dev->uc_promisc) {
			FUNC0(dev, -1, false);
			dev->uc_promisc = false;
		}
	}

	if (ops->ndo_set_rx_mode)
		ops->ndo_set_rx_mode(dev);
}