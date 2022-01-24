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
struct net_device {int flags; } ;
struct TYPE_2__ {scalar_t__ disable_ipv6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EACCES ; 
 struct inet6_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int IFF_LOOPBACK ; 
 scalar_t__ FUNC2 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct inet6_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static struct inet6_dev *FUNC6(struct net_device *dev)
{
	struct inet6_dev *idev;

	FUNC0();

	idev = FUNC4(dev);
	if (FUNC2(idev))
		return idev;

	if (idev->cnf.disable_ipv6)
		return FUNC1(-EACCES);

	/* Add default multicast route */
	if (!(dev->flags & IFF_LOOPBACK) && !FUNC5(dev))
		FUNC3(dev);

	return idev;
}