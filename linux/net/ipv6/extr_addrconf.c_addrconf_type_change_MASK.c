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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long NETDEV_POST_TYPE_CHANGE ; 
 unsigned long NETDEV_PRE_TYPE_CHANGE ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, unsigned long event)
{
	struct inet6_dev *idev;
	FUNC0();

	idev = FUNC1(dev);

	if (event == NETDEV_POST_TYPE_CHANGE)
		FUNC2(idev);
	else if (event == NETDEV_PRE_TYPE_CHANGE)
		FUNC3(idev);
}