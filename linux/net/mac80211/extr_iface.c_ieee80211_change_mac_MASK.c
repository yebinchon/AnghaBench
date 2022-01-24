#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ mntr; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; TYPE_2__ u; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int MONITOR_FLAG_ACTIVE ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int FUNC1 (struct net_device*,struct sockaddr*) ; 
 scalar_t__ FUNC2 (struct ieee80211_sub_if_data*) ; 
 int FUNC3 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *addr)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct sockaddr *sa = addr;
	bool check_dup = true;
	int ret;

	if (FUNC2(sdata))
		return -EBUSY;

	if (sdata->vif.type == NL80211_IFTYPE_MONITOR &&
	    !(sdata->u.mntr.flags & MONITOR_FLAG_ACTIVE))
		check_dup = false;

	ret = FUNC3(sdata, sa->sa_data, check_dup);
	if (ret)
		return ret;

	ret = FUNC1(dev, sa);

	if (ret == 0)
		FUNC4(sdata->vif.addr, sa->sa_data, ETH_ALEN);

	return ret;
}