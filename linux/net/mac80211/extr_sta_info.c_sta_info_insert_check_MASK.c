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
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct sta_info {int /*<<< orphan*/  addr; TYPE_3__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ vif; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw; int /*<<< orphan*/  sta_mtx; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int ENOTUNIQ ; 
 int /*<<< orphan*/  NEEDS_UNIQUE_STA_ADDR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;

	/*
	 * Can't be a WARN_ON because it can be triggered through a race:
	 * something inserts a STA (on one CPU) without holding the RTNL
	 * and another CPU turns off the net device.
	 */
	if (FUNC9(!FUNC4(sdata)))
		return -ENETDOWN;

	if (FUNC0(FUNC1(sta->sta.addr, sdata->vif.addr) ||
		    FUNC5(sta->sta.addr)))
		return -EINVAL;

	/* The RCU read lock is required by rhashtable due to
	 * asynchronous resize/rehash.  We also require the mutex
	 * for correctness.
	 */
	FUNC7();
	FUNC6(&sdata->local->sta_mtx);
	if (FUNC3(&sdata->local->hw, NEEDS_UNIQUE_STA_ADDR) &&
	    FUNC2(&sdata->local->hw, sta->addr, NULL)) {
		FUNC8();
		return -ENOTUNIQ;
	}
	FUNC8();

	return 0;
}