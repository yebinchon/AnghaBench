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
struct net_device {int /*<<< orphan*/  name; TYPE_2__* ieee80211_ptr; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {scalar_t__ privid; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 unsigned long NETDEV_CHANGENAME ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ mac80211_wiphy_privid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb,
			 unsigned long state, void *ptr)
{
	struct net_device *dev = FUNC3(ptr);
	struct ieee80211_sub_if_data *sdata;

	if (state != NETDEV_CHANGENAME)
		return NOTIFY_DONE;

	if (!dev->ieee80211_ptr || !dev->ieee80211_ptr->wiphy)
		return NOTIFY_DONE;

	if (dev->ieee80211_ptr->wiphy->privid != mac80211_wiphy_privid)
		return NOTIFY_DONE;

	sdata = FUNC0(dev);
	FUNC2(sdata->name, dev->name, IFNAMSIZ);
	FUNC1(sdata);

	return NOTIFY_OK;
}