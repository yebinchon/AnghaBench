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
struct net_device {int flags; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int IFF_UP ; 
 scalar_t__ FUNC1 (struct inet6_dev*) ; 
 struct inet6_dev* FUNC2 (struct net_device*) ; 
 struct inet6_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 

__attribute__((used)) static struct inet6_dev *FUNC5(struct net_device *dev)
{
	struct inet6_dev *idev;

	FUNC0();

	idev = FUNC2(dev);
	if (!idev) {
		idev = FUNC3(dev);
		if (FUNC1(idev))
			return idev;
	}

	if (dev->flags&IFF_UP)
		FUNC4(idev);
	return idev;
}