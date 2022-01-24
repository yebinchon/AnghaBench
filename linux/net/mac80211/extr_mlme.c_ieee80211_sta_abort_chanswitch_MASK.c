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
struct TYPE_3__ {int csa_active; } ;
struct ieee80211_sub_if_data {int csa_block_tx; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  chanctx_mtx; TYPE_2__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  abort_channel_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_CSA ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;

	if (!local->ops->abort_channel_switch)
		return;

	FUNC3(&local->mtx);

	FUNC3(&local->chanctx_mtx);
	FUNC1(sdata);
	FUNC4(&local->chanctx_mtx);

	if (sdata->csa_block_tx)
		FUNC2(local, sdata,
					  IEEE80211_QUEUE_STOP_REASON_CSA);

	sdata->csa_block_tx = false;
	sdata->vif.csa_active = false;

	FUNC4(&local->mtx);

	FUNC0(sdata);
}