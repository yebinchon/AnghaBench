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
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_HW_ADDR_T_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, const unsigned char *addr,
			bool global)
{
	int err;

	FUNC2(dev);
	err = FUNC1(&dev->mc, addr, dev->addr_len,
			       NETDEV_HW_ADDR_T_MULTICAST, global, false, 0);
	if (!err)
		FUNC0(dev);
	FUNC3(dev);
	return err;
}