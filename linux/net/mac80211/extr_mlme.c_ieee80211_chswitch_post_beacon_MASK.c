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
struct TYPE_4__ {int csa_active; } ;
struct ieee80211_if_managed {int csa_waiting_bcn; int /*<<< orphan*/  csa_connection_drop_work; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int csa_block_tx; int /*<<< orphan*/  reserved_chandef; int /*<<< orphan*/  dev; TYPE_2__ vif; TYPE_1__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_CSA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,char*) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	int ret;

	FUNC5(sdata);

	FUNC0(!sdata->vif.csa_active);

	if (sdata->csa_block_tx) {
		FUNC4(local, sdata,
					  IEEE80211_QUEUE_STOP_REASON_CSA);
		sdata->csa_block_tx = false;
	}

	sdata->vif.csa_active = false;
	ifmgd->csa_waiting_bcn = false;

	ret = FUNC2(sdata);
	if (ret) {
		FUNC6(sdata,
			   "driver post channel switch failed, disconnecting\n");
		FUNC3(&local->hw,
				     &ifmgd->csa_connection_drop_work);
		return;
	}

	FUNC1(sdata->dev, &sdata->reserved_chandef);
}