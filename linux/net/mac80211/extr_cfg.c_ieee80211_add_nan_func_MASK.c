#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  func_lock; int /*<<< orphan*/  function_inst_ids; } ;
struct TYPE_9__ {TYPE_3__ nan; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_5__* local; TYPE_1__ vif; } ;
struct cfg80211_nan_func {int instance_id; } ;
struct TYPE_7__ {scalar_t__ max_nan_de_entries; } ;
struct TYPE_10__ {TYPE_2__ hw; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ieee80211_sub_if_data* FUNC0 (struct wireless_dev*) ; 
 scalar_t__ NL80211_IFTYPE_NAN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_5__*,struct ieee80211_sub_if_data*,struct cfg80211_nan_func*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct cfg80211_nan_func*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct wiphy *wiphy,
				  struct wireless_dev *wdev,
				  struct cfg80211_nan_func *nan_func)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(wdev);
	int ret;

	if (sdata->vif.type != NL80211_IFTYPE_NAN)
		return -EOPNOTSUPP;

	if (!FUNC5(sdata))
		return -ENETDOWN;

	FUNC6(&sdata->u.nan.func_lock);

	ret = FUNC3(&sdata->u.nan.function_inst_ids,
			nan_func, 1, sdata->local->hw.max_nan_de_entries + 1,
			GFP_ATOMIC);
	FUNC7(&sdata->u.nan.func_lock);

	if (ret < 0)
		return ret;

	nan_func->instance_id = ret;

	FUNC1(nan_func->instance_id == 0);

	ret = FUNC2(sdata->local, sdata, nan_func);
	if (ret) {
		FUNC6(&sdata->u.nan.func_lock);
		FUNC4(&sdata->u.nan.function_inst_ids,
			   nan_func->instance_id);
		FUNC7(&sdata->u.nan.func_lock);
	}

	return ret;
}