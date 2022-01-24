#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ieee80211_vif_chanctx_switch {int /*<<< orphan*/ * new_ctx; int /*<<< orphan*/ * old_ctx; TYPE_3__* vif; } ;
struct TYPE_9__ {scalar_t__ width; } ;
struct TYPE_6__ {scalar_t__ width; } ;
struct TYPE_7__ {TYPE_1__ chandef; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_4__ reserved_chandef; TYPE_3__ vif; int /*<<< orphan*/  assigned_chanctx_list; struct ieee80211_chanctx* reserved_chanctx; int /*<<< orphan*/  reserved_chanctx_list; int /*<<< orphan*/  reserved_ready; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  chanctx_mtx; int /*<<< orphan*/  mtx; } ;
struct ieee80211_chanctx {scalar_t__ replace_state; int /*<<< orphan*/  conf; int /*<<< orphan*/  assigned_vifs; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 scalar_t__ BSS_CHANGED_BANDWIDTH ; 
 int /*<<< orphan*/  CHANCTX_SWMODE_REASSIGN_VIF ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ IEEE80211_CHANCTX_REPLACES_OTHER ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int) ; 
 int FUNC2 (struct ieee80211_local*,struct ieee80211_vif_chanctx_switch*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,scalar_t__) ; 
 struct cfg80211_chan_def* FUNC4 (struct ieee80211_local*,struct ieee80211_chanctx*,TYPE_4__*) ; 
 scalar_t__ FUNC5 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_chanctx* FUNC13 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_vif_chanctx_switch vif_chsw[1] = {};
	struct ieee80211_chanctx *old_ctx, *new_ctx;
	const struct cfg80211_chan_def *chandef;
	u32 changed = 0;
	int err;

	FUNC17(&local->mtx);
	FUNC17(&local->chanctx_mtx);

	new_ctx = sdata->reserved_chanctx;
	old_ctx = FUNC13(sdata);

	if (FUNC0(!sdata->reserved_ready))
		return -EBUSY;

	if (FUNC0(!new_ctx))
		return -EINVAL;

	if (FUNC0(!old_ctx))
		return -EINVAL;

	if (FUNC0(new_ctx->replace_state ==
		    IEEE80211_CHANCTX_REPLACES_OTHER))
		return -EINVAL;

	chandef = FUNC4(local, new_ctx,
				&sdata->reserved_chandef);
	if (FUNC0(!chandef))
		return -EINVAL;

	FUNC6(local, new_ctx, chandef);

	vif_chsw[0].vif = &sdata->vif;
	vif_chsw[0].old_ctx = &old_ctx->conf;
	vif_chsw[0].new_ctx = &new_ctx->conf;

	FUNC15(&sdata->reserved_chanctx_list);
	sdata->reserved_chanctx = NULL;

	err = FUNC2(local, vif_chsw, 1,
				     CHANCTX_SWMODE_REASSIGN_VIF);
	if (err) {
		if (FUNC5(local, new_ctx) == 0)
			FUNC8(local, new_ctx);

		goto out;
	}

	FUNC16(&sdata->assigned_chanctx_list, &new_ctx->assigned_vifs);
	FUNC18(sdata->vif.chanctx_conf, &new_ctx->conf);

	if (sdata->vif.type == NL80211_IFTYPE_AP)
		FUNC1(sdata, false);

	FUNC7(sdata);

	if (FUNC5(local, old_ctx) == 0)
		FUNC8(local, old_ctx);

	if (sdata->vif.bss_conf.chandef.width != sdata->reserved_chandef.width)
		changed = BSS_CHANGED_BANDWIDTH;

	FUNC14(sdata, &sdata->reserved_chandef);

	FUNC11(local, new_ctx);
	FUNC10(local, new_ctx);
	FUNC9(local, new_ctx);

	if (changed)
		FUNC3(sdata, changed);

out:
	FUNC12(sdata);
	return err;
}