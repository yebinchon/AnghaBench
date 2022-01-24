#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct ieee80211_mgd_assoc_data* assoc_data; scalar_t__ flags; int /*<<< orphan*/  bssid; int /*<<< orphan*/  timer; } ;
struct TYPE_9__ {TYPE_3__ mgd; } ;
struct TYPE_6__ {int mu_mimo_owner; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; int /*<<< orphan*/  dev; TYPE_2__* local; TYPE_1__ vif; } ;
struct ieee80211_mgd_assoc_data {TYPE_5__* bss; } ;
struct TYPE_10__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_7__ {int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_CHANGED_BSSID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_mgd_assoc_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_sub_if_data *sdata,
					 bool assoc, bool abandon)
{
	struct ieee80211_mgd_assoc_data *assoc_data = sdata->u.mgd.assoc_data;

	FUNC8(sdata);

	if (!assoc) {
		/*
		 * we are not associated yet, the only timer that could be
		 * running is the timeout for the association response which
		 * which is not relevant anymore.
		 */
		FUNC1(&sdata->u.mgd.timer);
		FUNC9(sdata, assoc_data->bss->bssid);

		FUNC2(sdata->u.mgd.bssid);
		FUNC3(sdata, BSS_CHANGED_BSSID);
		sdata->u.mgd.flags = 0;
		sdata->vif.mu_mimo_owner = false;

		FUNC6(&sdata->local->mtx);
		FUNC4(sdata);
		FUNC7(&sdata->local->mtx);

		if (abandon)
			FUNC0(sdata->dev, assoc_data->bss);
	}

	FUNC5(assoc_data);
	sdata->u.mgd.assoc_data = NULL;
}