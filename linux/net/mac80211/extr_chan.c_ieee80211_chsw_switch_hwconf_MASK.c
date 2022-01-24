#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  radar_enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;
struct ieee80211_local {struct cfg80211_chan_def _oper_chandef; TYPE_2__ hw; int /*<<< orphan*/  chanctx_mtx; int /*<<< orphan*/  mtx; } ;
struct TYPE_6__ {int /*<<< orphan*/  radar_enabled; } ;
struct ieee80211_chanctx {TYPE_3__ conf; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct cfg80211_chan_def* FUNC1 (struct ieee80211_local*,struct ieee80211_chanctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_local *local,
					struct ieee80211_chanctx *new_ctx)
{
	const struct cfg80211_chan_def *chandef;

	FUNC3(&local->mtx);
	FUNC3(&local->chanctx_mtx);

	chandef = FUNC1(local, new_ctx, NULL);
	if (FUNC0(!chandef))
		return -EINVAL;

	local->hw.conf.radar_enabled = new_ctx->conf.radar_enabled;
	local->_oper_chandef = *chandef;
	FUNC2(local, 0);

	return 0;
}