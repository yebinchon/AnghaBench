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

/* Variables and functions */
#define  NETDEV_CHANGENAME 130 
#define  NETDEV_REGISTER 129 
#define  NETDEV_UNREGISTER 128 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, unsigned long event)
{
	int err = 0;

	switch (event) {
	case NETDEV_CHANGENAME:
		FUNC1(dev);
		err = FUNC0(dev);
		break;
	case NETDEV_REGISTER:
		err = FUNC0(dev);
		break;
	case NETDEV_UNREGISTER:
		FUNC1(dev);
		break;
	}

	return err;
}