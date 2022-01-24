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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct inet6_dev*,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *dev, struct in6_addr *addr,
		    u32 banned_flags)
{
	struct inet6_dev *idev;
	int err = -EADDRNOTAVAIL;

	FUNC2();
	idev = FUNC0(dev);
	if (idev) {
		FUNC4(&idev->lock);
		err = FUNC1(idev, addr, banned_flags);
		FUNC5(&idev->lock);
	}
	FUNC3();
	return err;
}