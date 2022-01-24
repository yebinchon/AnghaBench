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
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC3 (struct net_device*,unsigned char const*,int /*<<< orphan*/ *) ; 

int FUNC4(struct net_device *dev, const unsigned char *addr,
		 unsigned char addr_type)
{
	int err;

	FUNC0();

	err = FUNC3(dev, addr, NULL);
	if (err)
		return err;
	err = FUNC1(&dev->dev_addrs, addr, dev->addr_len, addr_type);
	if (!err)
		FUNC2(NETDEV_CHANGEADDR, dev);
	return err;
}