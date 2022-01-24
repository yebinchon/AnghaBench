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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_3__ {int /*<<< orphan*/  func_lock; int /*<<< orphan*/  function_inst_ids; } ;
struct TYPE_4__ {TYPE_1__ nan; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;
struct cfg80211_nan_func {int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_nan_func_term_reason { ____Placeholder_nl80211_nan_func_term_reason } nl80211_nan_func_term_reason ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_NAN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_nan_func*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cfg80211_nan_func* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC8 (struct ieee80211_vif*) ; 

void FUNC9(struct ieee80211_vif *vif,
				   u8 inst_id,
				   enum nl80211_nan_func_term_reason reason,
				   gfp_t gfp)
{
	struct ieee80211_sub_if_data *sdata = FUNC8(vif);
	struct cfg80211_nan_func *func;
	u64 cookie;

	if (FUNC0(vif->type != NL80211_IFTYPE_NAN))
		return;

	FUNC6(&sdata->u.nan.func_lock);

	func = FUNC3(&sdata->u.nan.function_inst_ids, inst_id);
	if (FUNC0(!func)) {
		FUNC7(&sdata->u.nan.func_lock);
		return;
	}

	cookie = func->cookie;
	FUNC4(&sdata->u.nan.function_inst_ids, inst_id);

	FUNC7(&sdata->u.nan.func_lock);

	FUNC1(func);

	FUNC2(FUNC5(vif), inst_id,
				     reason, cookie, gfp);
}