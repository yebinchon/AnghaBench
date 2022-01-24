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
struct net_device {int features; scalar_t__ reg_state; int ifindex; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  NETDEV_REGISTER ; 
 int /*<<< orphan*/  NETDEV_UNREGISTER ; 
 int NETIF_F_NETNS_LOCAL ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  RTM_DELLINK ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct net*,int) ; 
 scalar_t__ FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net*,struct net_device*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct net*) ; 
 int FUNC10 (struct net*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct net_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct net_device*,unsigned int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 

int FUNC25(struct net_device *dev, struct net *net, const char *pat)
{
	int err, new_nsid, new_ifindex;

	FUNC0();

	/* Don't allow namespace local devices to be moved. */
	err = -EINVAL;
	if (dev->features & NETIF_F_NETNS_LOCAL)
		goto out;

	/* Ensure the device has been registrered */
	if (dev->reg_state != NETREG_REGISTERED)
		goto out;

	/* Get out if there is nothing todo */
	err = 0;
	if (FUNC16(FUNC8(dev), net))
		goto out;

	/* Pick the destination device name, and ensure
	 * we can use it in the destination network namespace.
	 */
	err = -EEXIST;
	if (FUNC3(net, dev->name)) {
		/* We get here if we can't use the current device name */
		if (!pat)
			goto out;
		err = FUNC6(net, dev, pat);
		if (err < 0)
			goto out;
	}

	/*
	 * And now a mini version of register_netdevice unregister_netdevice.
	 */

	/* If device is running close it first. */
	FUNC5(dev);

	/* And unlink it from device chain */
	FUNC24(dev);

	FUNC23();

	/* Shutdown queueing discipline. */
	FUNC11(dev);

	/* Notify protocols, that we are about to destroy
	 * this device. They should clean all the things.
	 *
	 * Note that dev->reg_state stays at NETREG_REGISTERED.
	 * This is wanted because this way 8021q and macvlan know
	 * the device is just moving and can keep their slaves up.
	 */
	FUNC4(NETDEV_UNREGISTER, dev);
	FUNC20();

	new_nsid = FUNC19(FUNC8(dev), net, GFP_KERNEL);
	/* If there is an ifindex conflict assign a new one */
	if (FUNC2(net, dev->ifindex))
		new_ifindex = FUNC10(net);
	else
		new_ifindex = dev->ifindex;

	FUNC22(RTM_DELLINK, dev, ~0U, GFP_KERNEL, &new_nsid,
			    new_ifindex);

	/*
	 *	Flush the unicast and multicast chains
	 */
	FUNC12(dev);
	FUNC7(dev);

	/* Send a netdev-removed uevent to the old namespace */
	FUNC14(&dev->dev.kobj, KOBJ_REMOVE);
	FUNC18(dev);

	/* Actually switch the network namespace */
	FUNC9(dev, net);
	dev->ifindex = new_ifindex;

	/* Send a netdev-add uevent to the new namespace */
	FUNC14(&dev->dev.kobj, KOBJ_ADD);
	FUNC17(dev);

	/* Fixup kobjects */
	err = FUNC13(&dev->dev, dev->name);
	FUNC1(err);

	/* Add the device back in the hashes */
	FUNC15(dev);

	/* Notify protocols, that a new device appeared. */
	FUNC4(NETDEV_REGISTER, dev);

	/*
	 *	Prevent userspace races by waiting until the network
	 *	device is fully setup before sending notifications.
	 */
	FUNC21(RTM_NEWLINK, dev, ~0U, GFP_KERNEL);

	FUNC23();
	err = 0;
out:
	return err;
}