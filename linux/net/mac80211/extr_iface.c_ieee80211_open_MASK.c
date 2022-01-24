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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  wdev; TYPE_1__ vif; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	int err;

	/* fail early if user set an invalid address */
	if (!FUNC3(dev->dev_addr))
		return -EADDRNOTAVAIL;

	err = FUNC1(sdata, sdata->vif.type);
	if (err)
		return err;

	return FUNC2(&sdata->wdev, true);
}