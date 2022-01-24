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
struct TYPE_5__ {void* iftype; } ;
struct TYPE_4__ {void* type; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  work; int /*<<< orphan*/  skb_queue; int /*<<< orphan*/  encrypt_headroom; TYPE_2__ wdev; int /*<<< orphan*/  name; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; scalar_t__ vif_data_size; } ;
struct ieee80211_local {int /*<<< orphan*/  iflist_mtx; scalar_t__ monitor_sdata; int /*<<< orphan*/  mtx; int /*<<< orphan*/  monitor_chandef; TYPE_3__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_CHANCTX_EXCLUSIVE ; 
 int /*<<< orphan*/  IEEE80211_ENCRYPT_HEADROOM ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WANT_MONITOR_VIF ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*,struct ieee80211_sub_if_data*) ; 
 int FUNC6 (struct ieee80211_sub_if_data*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieee80211_iface_work ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*) ; 
 int FUNC9 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_sub_if_data* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(struct ieee80211_local *local)
{
	struct ieee80211_sub_if_data *sdata;
	int ret;

	if (!FUNC7(&local->hw, WANT_MONITOR_VIF))
		return 0;

	FUNC0();

	if (local->monitor_sdata)
		return 0;

	sdata = FUNC11(sizeof(*sdata) + local->hw.vif_data_size, GFP_KERNEL);
	if (!sdata)
		return -ENOMEM;

	/* set up data */
	sdata->local = local;
	sdata->vif.type = NL80211_IFTYPE_MONITOR;
	FUNC16(sdata->name, IFNAMSIZ, "%s-monitor",
		 FUNC18(local->hw.wiphy));
	sdata->wdev.iftype = NL80211_IFTYPE_MONITOR;

	sdata->encrypt_headroom = IEEE80211_ENCRYPT_HEADROOM;

	FUNC8(sdata);

	ret = FUNC4(local, sdata);
	if (FUNC3(ret)) {
		/* ok .. stupid driver, it asked for this! */
		FUNC10(sdata);
		return ret;
	}

	ret = FUNC6(sdata, NL80211_IFTYPE_MONITOR);
	if (ret) {
		FUNC10(sdata);
		return ret;
	}

	FUNC12(&local->iflist_mtx);
	FUNC14(local->monitor_sdata, sdata);
	FUNC13(&local->iflist_mtx);

	FUNC12(&local->mtx);
	ret = FUNC9(sdata, &local->monitor_chandef,
					IEEE80211_CHANCTX_EXCLUSIVE);
	FUNC13(&local->mtx);
	if (ret) {
		FUNC12(&local->iflist_mtx);
		FUNC2(local->monitor_sdata, NULL);
		FUNC13(&local->iflist_mtx);
		FUNC17();
		FUNC5(local, sdata);
		FUNC10(sdata);
		return ret;
	}

	FUNC15(&sdata->skb_queue);
	FUNC1(&sdata->work, ieee80211_iface_work);

	return 0;
}