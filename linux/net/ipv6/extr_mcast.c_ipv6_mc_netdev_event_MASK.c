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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
#define  NETDEV_RESEND_IGMP 128 
 int NOTIFY_DONE ; 
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*) ; 
 struct net_device* FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *this,
				unsigned long event,
				void *ptr)
{
	struct net_device *dev = FUNC2(ptr);
	struct inet6_dev *idev = FUNC0(dev);

	switch (event) {
	case NETDEV_RESEND_IGMP:
		if (idev)
			FUNC1(idev);
		break;
	default:
		break;
	}

	return NOTIFY_DONE;
}