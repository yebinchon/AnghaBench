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
struct ieee80211_chanctx {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;

/* Variables and functions */
 struct cfg80211_chan_def* FUNC0 (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ; 
 struct cfg80211_chan_def* FUNC1 (struct ieee80211_local*,struct ieee80211_chanctx*,struct cfg80211_chan_def const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const struct cfg80211_chan_def *
FUNC3(struct ieee80211_local *local,
				   struct ieee80211_chanctx *ctx,
				   const struct cfg80211_chan_def *compat)
{
	FUNC2(&local->chanctx_mtx);

	compat = FUNC1(local, ctx, compat);
	if (!compat)
		return NULL;

	compat = FUNC0(local, ctx, compat);
	if (!compat)
		return NULL;

	return compat;
}