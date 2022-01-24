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
struct net_device {scalar_t__ addr_assign_type; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 scalar_t__ NET_ADDR_STOLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC2(struct net_device *dev,
			      struct net_device *real_dev)
{
	if (dev->addr_assign_type != NET_ADDR_STOLEN)
		return false;

	FUNC1(dev->dev_addr, real_dev->dev_addr);
	FUNC0(NETDEV_CHANGEADDR, dev);
	return true;
}