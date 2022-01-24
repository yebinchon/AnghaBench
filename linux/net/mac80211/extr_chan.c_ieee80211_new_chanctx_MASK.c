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
struct ieee80211_local {int /*<<< orphan*/  chanctx_list; int /*<<< orphan*/  chanctx_mtx; int /*<<< orphan*/  mtx; } ;
struct ieee80211_chanctx {int /*<<< orphan*/  list; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  enum ieee80211_chanctx_mode { ____Placeholder_ieee80211_chanctx_mode } ieee80211_chanctx_mode ;

/* Variables and functions */
 int ENOMEM ; 
 struct ieee80211_chanctx* FUNC0 (int) ; 
 int FUNC1 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 struct ieee80211_chanctx* FUNC2 (struct ieee80211_local*,struct cfg80211_chan_def const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ieee80211_chanctx *
FUNC6(struct ieee80211_local *local,
		      const struct cfg80211_chan_def *chandef,
		      enum ieee80211_chanctx_mode mode)
{
	struct ieee80211_chanctx *ctx;
	int err;

	FUNC5(&local->mtx);
	FUNC5(&local->chanctx_mtx);

	ctx = FUNC2(local, chandef, mode);
	if (!ctx)
		return FUNC0(-ENOMEM);

	err = FUNC1(local, ctx);
	if (err) {
		FUNC3(ctx);
		return FUNC0(err);
	}

	FUNC4(&ctx->list, &local->chanctx_list);
	return ctx;
}