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
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODEV ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct inet6_dev*,struct in6_addr const*) ; 

int FUNC3(struct net_device *dev, const struct in6_addr *addr)
{
	struct inet6_dev *idev;
	int err;

	FUNC0();

	idev = FUNC1(dev);
	if (!idev)
		err = -ENODEV;
	else
		err = FUNC2(idev, addr);

	return err;
}