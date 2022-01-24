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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  chandef; } ;
struct TYPE_4__ {int csa_active; TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int csa_block_tx; int /*<<< orphan*/  csa_chandef; int /*<<< orphan*/  dev; TYPE_2__ vif; scalar_t__ reserved_ready; scalar_t__ reserved_chanctx; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  chanctx_mtx; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_CSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	u32 changed = 0;
	int err;

	FUNC8(sdata);
	FUNC7(&local->mtx);
	FUNC7(&local->chanctx_mtx);

	/*
	 * using reservation isn't immediate as it may be deferred until later
	 * with multi-vif. once reservation is complete it will re-schedule the
	 * work with no reserved_chanctx so verify chandef to check if it
	 * completed successfully
	 */

	if (sdata->reserved_chanctx) {
		/*
		 * with multi-vif csa driver may call ieee80211_csa_finish()
		 * many times while waiting for other interfaces to use their
		 * reservations
		 */
		if (sdata->reserved_ready)
			return 0;

		return FUNC5(sdata);
	}

	if (!FUNC1(&sdata->vif.bss_conf.chandef,
					&sdata->csa_chandef))
		return -EINVAL;

	sdata->vif.csa_active = false;

	err = FUNC4(sdata, &changed);
	if (err)
		return err;

	FUNC3(sdata, changed);

	if (sdata->csa_block_tx) {
		FUNC6(local, sdata,
					  IEEE80211_QUEUE_STOP_REASON_CSA);
		sdata->csa_block_tx = false;
	}

	err = FUNC2(sdata);
	if (err)
		return err;

	FUNC0(sdata->dev, &sdata->csa_chandef);

	return 0;
}