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
struct net_device {int flags; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  mc; } ;
struct ieee80211_sub_if_data {int flags; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  reconfig_filter; int /*<<< orphan*/  hw; int /*<<< orphan*/  filter_lock; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  iff_allmultis; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int IEEE80211_SDATA_ALLMULTI ; 
 int IFF_ALLMULTI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	int allmulti, sdata_allmulti;

	allmulti = !!(dev->flags & IFF_ALLMULTI);
	sdata_allmulti = !!(sdata->flags & IEEE80211_SDATA_ALLMULTI);

	if (allmulti != sdata_allmulti) {
		if (dev->flags & IFF_ALLMULTI)
			FUNC3(&local->iff_allmultis);
		else
			FUNC2(&local->iff_allmultis);
		sdata->flags ^= IEEE80211_SDATA_ALLMULTI;
	}

	FUNC5(&local->filter_lock);
	FUNC1(&local->mc_list, &dev->mc, dev->addr_len);
	FUNC6(&local->filter_lock);
	FUNC4(&local->hw, &local->reconfig_filter);
}