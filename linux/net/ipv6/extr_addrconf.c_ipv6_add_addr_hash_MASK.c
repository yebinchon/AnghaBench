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
struct inet6_ifaddr {int /*<<< orphan*/  addr_lst; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  addrconf_hash_lock ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * inet6_addr_lst ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct inet6_ifaddr *ifa)
{
	unsigned int hash = FUNC2(FUNC0(dev), &ifa->addr);
	int err = 0;

	FUNC5(&addrconf_hash_lock);

	/* Ignore adding duplicate addresses on an interface */
	if (FUNC3(FUNC0(dev), &ifa->addr, dev, hash)) {
		FUNC4(dev, "ipv6_add_addr: already assigned\n");
		err = -EEXIST;
	} else {
		FUNC1(&ifa->addr_lst, &inet6_addr_lst[hash]);
	}

	FUNC6(&addrconf_hash_lock);

	return err;
}