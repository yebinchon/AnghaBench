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
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct ieee80211_chanctx {int /*<<< orphan*/  conf; int /*<<< orphan*/  driver_present; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unassign_vif_chanctx ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_chanctx*) ; 

__attribute__((used)) static inline void FUNC6(struct ieee80211_local *local,
					    struct ieee80211_sub_if_data *sdata,
					    struct ieee80211_chanctx *ctx)
{
	FUNC2();

	if (!FUNC1(sdata))
		return;

	FUNC5(local, sdata, ctx);
	if (local->ops->unassign_vif_chanctx) {
		FUNC0(!ctx->driver_present);
		local->ops->unassign_vif_chanctx(&local->hw,
						 &sdata->vif,
						 &ctx->conf);
	}
	FUNC4(local);
}