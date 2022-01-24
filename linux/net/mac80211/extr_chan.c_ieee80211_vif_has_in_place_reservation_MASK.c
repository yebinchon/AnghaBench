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
struct ieee80211_sub_if_data {struct ieee80211_chanctx* reserved_chanctx; TYPE_1__* local; } ;
struct ieee80211_chanctx {scalar_t__ replace_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  chanctx_mtx; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_CHANCTX_REPLACES_OTHER ; 
 scalar_t__ IEEE80211_CHANCTX_WILL_BE_REPLACED ; 
 scalar_t__ FUNC0 (int) ; 
 struct ieee80211_chanctx* FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_chanctx *old_ctx, *new_ctx;

	FUNC2(&sdata->local->chanctx_mtx);

	new_ctx = sdata->reserved_chanctx;
	old_ctx = FUNC1(sdata);

	if (!old_ctx)
		return false;

	if (FUNC0(!new_ctx))
		return false;

	if (old_ctx->replace_state != IEEE80211_CHANCTX_WILL_BE_REPLACED)
		return false;

	if (new_ctx->replace_state != IEEE80211_CHANCTX_REPLACES_OTHER)
		return false;

	return true;
}