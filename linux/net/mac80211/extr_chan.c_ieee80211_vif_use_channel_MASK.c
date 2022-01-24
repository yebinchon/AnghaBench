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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  iftype; } ;
struct ieee80211_sub_if_data {int radar_required; TYPE_2__ wdev; scalar_t__ dev; struct ieee80211_local* local; } ;
struct TYPE_3__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {int /*<<< orphan*/  chanctx_mtx; TYPE_1__ hw; int /*<<< orphan*/  mtx; } ;
struct ieee80211_chanctx {int dummy; } ;
struct cfg80211_chan_def {int /*<<< orphan*/  width; } ;
typedef  enum ieee80211_chanctx_mode { ____Placeholder_ieee80211_chanctx_mode } ieee80211_chanctx_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ieee80211_chanctx*) ; 
 int FUNC2 (struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct cfg80211_chan_def const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ieee80211_sub_if_data*,struct ieee80211_chanctx*) ; 
 scalar_t__ FUNC7 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int FUNC8 (struct ieee80211_sub_if_data*,struct cfg80211_chan_def const*,int,int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx* FUNC9 (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 struct ieee80211_chanctx* FUNC11 (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*,struct cfg80211_chan_def const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 

int FUNC19(struct ieee80211_sub_if_data *sdata,
			      const struct cfg80211_chan_def *chandef,
			      enum ieee80211_chanctx_mode mode)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_chanctx *ctx;
	u8 radar_detect_width = 0;
	int ret;

	FUNC15(&local->mtx);

	FUNC3(sdata->dev && FUNC18(sdata->dev));

	FUNC16(&local->chanctx_mtx);

	ret = FUNC5(local->hw.wiphy,
					    chandef,
					    sdata->wdev.iftype);
	if (ret < 0)
		goto out;
	if (ret > 0)
		radar_detect_width = FUNC0(chandef->width);

	sdata->radar_required = ret;

	ret = FUNC8(sdata, chandef, mode,
					   radar_detect_width);
	if (ret < 0)
		goto out;

	FUNC4(sdata);

	ctx = FUNC9(local, chandef, mode);
	if (!ctx)
		ctx = FUNC11(local, chandef, mode);
	if (FUNC1(ctx)) {
		ret = FUNC2(ctx);
		goto out;
	}

	FUNC14(sdata, chandef);

	ret = FUNC6(sdata, ctx);
	if (ret) {
		/* if assign fails refcount stays the same */
		if (FUNC7(local, ctx) == 0)
			FUNC10(local, ctx);
		goto out;
	}

	FUNC13(local, ctx);
	FUNC12(local, ctx);
 out:
	if (ret)
		sdata->radar_required = false;

	FUNC17(&local->chanctx_mtx);
	return ret;
}