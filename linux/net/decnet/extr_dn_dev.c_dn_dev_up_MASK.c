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
struct net_device {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  dn_ptr; } ;
struct dn_ifaddr {int /*<<< orphan*/  ifa_label; int /*<<< orphan*/  ifa_scope; scalar_t__ ifa_flags; scalar_t__ ifa_address; scalar_t__ ifa_local; } ;
struct dn_dev {int dummy; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 scalar_t__ ARPHRD_LOOPBACK ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 scalar_t__ decnet_address ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct dn_ifaddr* FUNC2 () ; 
 struct dn_dev* FUNC3 (struct net_device*,int*) ; 
 scalar_t__ FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct dn_ifaddr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn_hiord ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dn_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct net_device *dev)
{
	struct dn_ifaddr *ifa;
	__le16 addr = decnet_address;
	int maybe_default = 0;
	struct dn_dev *dn_db = FUNC8(dev->dn_ptr);

	if ((dev->type != ARPHRD_ETHER) && (dev->type != ARPHRD_LOOPBACK))
		return;

	/*
	 * Need to ensure that loopback device has a dn_db attached to it
	 * to allow creation of neighbours against it, even though it might
	 * not have a local address of its own. Might as well do the same for
	 * all autoconfigured interfaces.
	 */
	if (dn_db == NULL) {
		int err;
		dn_db = FUNC3(dev, &err);
		if (dn_db == NULL)
			return;
	}

	if (dev->type == ARPHRD_ETHER) {
		if (FUNC7(dev->dev_addr, dn_hiord, 4) != 0)
			return;
		addr = FUNC6(dev->dev_addr);
		maybe_default = 1;
	}

	if (addr == 0)
		return;

	if ((ifa = FUNC2()) == NULL)
		return;

	ifa->ifa_local = ifa->ifa_address = addr;
	ifa->ifa_flags = 0;
	ifa->ifa_scope = RT_SCOPE_UNIVERSE;
	FUNC9(ifa->ifa_label, dev->name);

	FUNC5(dev, ifa);

	/*
	 * Automagically set the default device to the first automatically
	 * configured ethernet card in the system.
	 */
	if (maybe_default) {
		FUNC0(dev);
		if (FUNC4(dev, 0))
			FUNC1(dev);
	}
}