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
struct net_device {int flags; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  phydev; } ;
struct dsa_port {int /*<<< orphan*/  pl; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int FUNC0 (struct net_device*,int) ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dsa_port*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct net_device*) ; 
 struct dsa_port* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct net_device *master = FUNC5(dev);
	struct dsa_port *dp = FUNC6(dev);
	int err;

	if (!(master->flags & IFF_UP))
		return -ENETDOWN;

	if (!FUNC7(dev->dev_addr, master->dev_addr)) {
		err = FUNC2(master, dev->dev_addr);
		if (err < 0)
			goto out;
	}

	if (dev->flags & IFF_ALLMULTI) {
		err = FUNC0(master, 1);
		if (err < 0)
			goto del_unicast;
	}
	if (dev->flags & IFF_PROMISC) {
		err = FUNC1(master, 1);
		if (err < 0)
			goto clear_allmulti;
	}

	err = FUNC4(dp, dev->phydev);
	if (err)
		goto clear_promisc;

	FUNC8(dp->pl);

	return 0;

clear_promisc:
	if (dev->flags & IFF_PROMISC)
		FUNC1(master, -1);
clear_allmulti:
	if (dev->flags & IFF_ALLMULTI)
		FUNC0(master, -1);
del_unicast:
	if (!FUNC7(dev->dev_addr, master->dev_addr))
		FUNC3(master, dev->dev_addr);
out:
	return err;
}