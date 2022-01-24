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
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_local {struct cfg80211_chan_def _oper_chandef; int /*<<< orphan*/  use_chanctx; } ;
struct TYPE_2__ {struct cfg80211_chan_def def; } ;
struct ieee80211_chanctx {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CHANCTX_CHANGE_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_chan_def*,struct cfg80211_chan_def const*) ; 
 scalar_t__ FUNC2 (struct cfg80211_chan_def*,struct cfg80211_chan_def const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_chanctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_local *local,
				     struct ieee80211_chanctx *ctx,
				     const struct cfg80211_chan_def *chandef)
{
	if (FUNC2(&ctx->conf.def, chandef)) {
		FUNC5(local, ctx);
		return;
	}

	FUNC0(!FUNC1(&ctx->conf.def, chandef));

	ctx->conf.def = *chandef;
	FUNC3(local, ctx, IEEE80211_CHANCTX_CHANGE_WIDTH);
	FUNC5(local, ctx);

	if (!local->use_chanctx) {
		local->_oper_chandef = *chandef;
		FUNC4(local, 0);
	}
}