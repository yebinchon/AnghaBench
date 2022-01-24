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
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_3__ {int /*<<< orphan*/  func_lock; int /*<<< orphan*/  function_inst_ids; } ;
struct TYPE_4__ {TYPE_1__ nan; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct cfg80211_nan_match_params {int /*<<< orphan*/  cookie; int /*<<< orphan*/  inst_id; } ;
struct cfg80211_nan_func {int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_NAN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cfg80211_nan_match_params*,int /*<<< orphan*/ ) ; 
 struct cfg80211_nan_func* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC6 (struct ieee80211_vif*) ; 

void FUNC7(struct ieee80211_vif *vif,
			      struct cfg80211_nan_match_params *match,
			      gfp_t gfp)
{
	struct ieee80211_sub_if_data *sdata = FUNC6(vif);
	struct cfg80211_nan_func *func;

	if (FUNC0(vif->type != NL80211_IFTYPE_NAN))
		return;

	FUNC4(&sdata->u.nan.func_lock);

	func = FUNC2(&sdata->u.nan.function_inst_ids,  match->inst_id);
	if (FUNC0(!func)) {
		FUNC5(&sdata->u.nan.func_lock);
		return;
	}
	match->cookie = func->cookie;

	FUNC5(&sdata->u.nan.func_lock);

	FUNC1(FUNC3(vif), match, gfp);
}