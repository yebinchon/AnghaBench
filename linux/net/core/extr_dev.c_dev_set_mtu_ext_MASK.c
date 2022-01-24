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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int mtu; int min_mtu; int max_mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  NETDEV_CHANGEMTU ; 
 int /*<<< orphan*/  NETDEV_PRECHANGEMTU ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int) ; 

int FUNC6(struct net_device *dev, int new_mtu,
		    struct netlink_ext_ack *extack)
{
	int err, orig_mtu;

	if (new_mtu == dev->mtu)
		return 0;

	/* MTU must be positive, and in range */
	if (new_mtu < 0 || new_mtu < dev->min_mtu) {
		FUNC0(extack, "mtu less than device minimum");
		return -EINVAL;
	}

	if (dev->max_mtu > 0 && new_mtu > dev->max_mtu) {
		FUNC0(extack, "mtu greater than device maximum");
		return -EINVAL;
	}

	if (!FUNC4(dev))
		return -ENODEV;

	err = FUNC2(NETDEV_PRECHANGEMTU, dev);
	err = FUNC5(err);
	if (err)
		return err;

	orig_mtu = dev->mtu;
	err = FUNC1(dev, new_mtu);

	if (!err) {
		err = FUNC3(NETDEV_CHANGEMTU, dev,
						   orig_mtu);
		err = FUNC5(err);
		if (err) {
			/* setting mtu back and notifying everyone again,
			 * so that they have a chance to revert changes.
			 */
			FUNC1(dev, orig_mtu);
			FUNC3(NETDEV_CHANGEMTU, dev,
						     new_mtu);
		}
	}
	return err;
}