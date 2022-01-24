#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; TYPE_2__* ieee802154_ptr; } ;
struct ieee802154_sub_if_data {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__* wpan_phy; } ;
struct TYPE_3__ {scalar_t__ privid; } ;

/* Variables and functions */
 struct ieee802154_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 unsigned long NETDEV_CHANGENAME ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 scalar_t__ mac802154_wpan_phy_privid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb,
			 unsigned long state, void *ptr)
{
	struct net_device *dev = FUNC2(ptr);
	struct ieee802154_sub_if_data *sdata;

	if (state != NETDEV_CHANGENAME)
		return NOTIFY_DONE;

	if (!dev->ieee802154_ptr || !dev->ieee802154_ptr->wpan_phy)
		return NOTIFY_DONE;

	if (dev->ieee802154_ptr->wpan_phy->privid != mac802154_wpan_phy_privid)
		return NOTIFY_DONE;

	sdata = FUNC0(dev);
	FUNC1(sdata->name, dev->name, IFNAMSIZ);

	return NOTIFY_OK;
}