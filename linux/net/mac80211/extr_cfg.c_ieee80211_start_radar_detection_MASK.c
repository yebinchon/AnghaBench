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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dfs_cac_timer_work; struct ieee80211_local* local; int /*<<< orphan*/  needed_rx_chains; int /*<<< orphan*/  smps_mode; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  hw; int /*<<< orphan*/  rx_chains; scalar_t__ scanning; int /*<<< orphan*/  roc_list; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IEEE80211_CHANCTX_SHARED ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  IEEE80211_SMPS_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_sub_if_data*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy,
					   struct net_device *dev,
					   struct cfg80211_chan_def *chandef,
					   u32 cac_time_ms)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	int err;

	FUNC5(&local->mtx);
	if (!FUNC3(&local->roc_list) || local->scanning) {
		err = -EBUSY;
		goto out_unlock;
	}

	/* whatever, but channel contexts should not complain about that one */
	sdata->smps_mode = IEEE80211_SMPS_OFF;
	sdata->needed_rx_chains = local->rx_chains;

	err = FUNC2(sdata, chandef,
					IEEE80211_CHANCTX_SHARED);
	if (err)
		goto out_unlock;

	FUNC1(&sdata->local->hw,
				     &sdata->dfs_cac_timer_work,
				     FUNC4(cac_time_ms));

 out_unlock:
	FUNC6(&local->mtx);
	return err;
}