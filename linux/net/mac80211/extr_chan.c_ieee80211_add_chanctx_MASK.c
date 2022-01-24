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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  radar_enabled; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;
struct ieee80211_local {int /*<<< orphan*/  _oper_chandef; int /*<<< orphan*/  use_chanctx; TYPE_2__ hw; int /*<<< orphan*/  chanctx_mtx; int /*<<< orphan*/  mtx; } ;
struct TYPE_6__ {int /*<<< orphan*/  def; int /*<<< orphan*/  radar_enabled; } ;
struct ieee80211_chanctx {TYPE_3__ conf; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_CONF_CHANGE_CHANNEL ; 
 int FUNC0 (struct ieee80211_local*,struct ieee80211_chanctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_local *local,
				 struct ieee80211_chanctx *ctx)
{
	u32 changed;
	int err;

	FUNC4(&local->mtx);
	FUNC4(&local->chanctx_mtx);

	if (!local->use_chanctx)
		local->hw.conf.radar_enabled = ctx->conf.radar_enabled;

	/* turn idle off *before* setting channel -- some drivers need that */
	changed = FUNC2(local);
	if (changed)
		FUNC1(local, changed);

	if (!local->use_chanctx) {
		local->_oper_chandef = ctx->conf.def;
		FUNC1(local, IEEE80211_CONF_CHANGE_CHANNEL);
	} else {
		err = FUNC0(local, ctx);
		if (err) {
			FUNC3(local);
			return err;
		}
	}

	return 0;
}