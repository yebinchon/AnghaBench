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
struct ieee80211_local {int /*<<< orphan*/  chanctx_mtx; } ;
struct ieee80211_chanctx {int /*<<< orphan*/  reserved_vifs; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(struct ieee80211_local *local,
				      struct ieee80211_chanctx *ctx,
				      const struct cfg80211_chan_def *def)
{
	FUNC3(&local->chanctx_mtx);

	if (FUNC0(local, ctx, def))
		return true;

	if (!FUNC2(&ctx->reserved_vifs) &&
	    FUNC1(local, ctx, def))
		return true;

	return false;
}