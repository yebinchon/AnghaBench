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
struct net_device {unsigned int flags; unsigned int gflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int IFF_ALLMULTI ; 
 unsigned int IFF_AUTOMEDIA ; 
 unsigned int IFF_DEBUG ; 
 unsigned int IFF_DYNAMIC ; 
 unsigned int IFF_MULTICAST ; 
 unsigned int IFF_NOARP ; 
 unsigned int IFF_NOTRAILERS ; 
 unsigned int IFF_PORTSEL ; 
 unsigned int IFF_PROMISC ; 
 unsigned int IFF_UP ; 
 unsigned int IFF_VOLATILE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int) ; 
 scalar_t__ FUNC4 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

int FUNC7(struct net_device *dev, unsigned int flags,
		       struct netlink_ext_ack *extack)
{
	unsigned int old_flags = dev->flags;
	int ret;

	FUNC0();

	/*
	 *	Set the flags on our device.
	 */

	dev->flags = (flags & (IFF_DEBUG | IFF_NOTRAILERS | IFF_NOARP |
			       IFF_DYNAMIC | IFF_MULTICAST | IFF_PORTSEL |
			       IFF_AUTOMEDIA)) |
		     (dev->flags & (IFF_UP | IFF_VOLATILE | IFF_PROMISC |
				    IFF_ALLMULTI));

	/*
	 *	Load in the correct multicast list now the flags have changed.
	 */

	if ((old_flags ^ flags) & IFF_MULTICAST)
		FUNC5(dev, IFF_MULTICAST);

	FUNC6(dev);

	/*
	 *	Have we downed the interface. We handle IFF_UP ourselves
	 *	according to user attempts to set it, rather than blindly
	 *	setting it.
	 */

	ret = 0;
	if ((old_flags ^ flags) & IFF_UP) {
		if (old_flags & IFF_UP)
			FUNC1(dev);
		else
			ret = FUNC2(dev, extack);
	}

	if ((flags ^ dev->gflags) & IFF_PROMISC) {
		int inc = (flags & IFF_PROMISC) ? 1 : -1;
		unsigned int old_flags = dev->flags;

		dev->gflags ^= IFF_PROMISC;

		if (FUNC4(dev, inc, false) >= 0)
			if (dev->flags != old_flags)
				FUNC6(dev);
	}

	/* NOTE: order of synchronization of IFF_PROMISC and IFF_ALLMULTI
	 * is important. Some (broken) drivers set IFF_PROMISC, when
	 * IFF_ALLMULTI is requested not asking us and not reporting.
	 */
	if ((flags ^ dev->gflags) & IFF_ALLMULTI) {
		int inc = (flags & IFF_ALLMULTI) ? 1 : -1;

		dev->gflags ^= IFF_ALLMULTI;
		FUNC3(dev, inc, false);
	}

	return ret;
}