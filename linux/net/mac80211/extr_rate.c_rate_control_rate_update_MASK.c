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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_sta {int dummy; } ;
struct sta_info {struct ieee80211_sta sta; TYPE_3__* sdata; int /*<<< orphan*/  rate_ctrl_lock; void* rate_ctrl_priv; } ;
struct rate_control_ref {int /*<<< orphan*/  priv; TYPE_2__* ops; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_local {struct rate_control_ref* rate_ctrl; } ;
struct ieee80211_chanctx_conf {int /*<<< orphan*/  def; } ;
struct TYPE_4__ {int /*<<< orphan*/  chanctx_conf; } ;
struct TYPE_6__ {TYPE_1__ vif; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* rate_update ) (int /*<<< orphan*/ ,struct ieee80211_supported_band*,int /*<<< orphan*/ *,struct ieee80211_sta*,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_local*,TYPE_3__*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx_conf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ieee80211_supported_band*,int /*<<< orphan*/ *,struct ieee80211_sta*,void*,int /*<<< orphan*/ ) ; 

void FUNC8(struct ieee80211_local *local,
				    struct ieee80211_supported_band *sband,
				    struct sta_info *sta, u32 changed)
{
	struct rate_control_ref *ref = local->rate_ctrl;
	struct ieee80211_sta *ista = &sta->sta;
	void *priv_sta = sta->rate_ctrl_priv;
	struct ieee80211_chanctx_conf *chanctx_conf;

	if (ref && ref->ops->rate_update) {
		FUNC3();

		chanctx_conf = FUNC2(sta->sdata->vif.chanctx_conf);
		if (FUNC0(!chanctx_conf)) {
			FUNC4();
			return;
		}

		FUNC5(&sta->rate_ctrl_lock);
		ref->ops->rate_update(ref->priv, sband, &chanctx_conf->def,
				      ista, priv_sta, changed);
		FUNC6(&sta->rate_ctrl_lock);
		FUNC4();
	}
	FUNC1(local, sta->sdata, &sta->sta, changed);
}