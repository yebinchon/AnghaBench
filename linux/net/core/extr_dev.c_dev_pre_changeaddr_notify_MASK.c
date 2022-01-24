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
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; struct net_device* dev; } ;
struct netdev_notifier_pre_changeaddr_info {char const* dev_addr; TYPE_1__ info; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_PRE_CHANGEADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (int) ; 

int FUNC2(struct net_device *dev, const char *addr,
			      struct netlink_ext_ack *extack)
{
	struct netdev_notifier_pre_changeaddr_info info = {
		.info.dev = dev,
		.info.extack = extack,
		.dev_addr = addr,
	};
	int rc;

	rc = FUNC0(NETDEV_PRE_CHANGEADDR, &info.info);
	return FUNC1(rc);
}