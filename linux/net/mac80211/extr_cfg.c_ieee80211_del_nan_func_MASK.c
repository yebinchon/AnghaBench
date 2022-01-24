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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  func_lock; } ;
struct TYPE_4__ {TYPE_3__ nan; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  local; TYPE_1__ u; TYPE_2__ vif; } ;
struct cfg80211_nan_func {scalar_t__ instance_id; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct wireless_dev*) ; 
 scalar_t__ NL80211_IFTYPE_NAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_sub_if_data*,scalar_t__) ; 
 struct cfg80211_nan_func* FUNC2 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct wiphy *wiphy,
				  struct wireless_dev *wdev, u64 cookie)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(wdev);
	struct cfg80211_nan_func *func;
	u8 instance_id = 0;

	if (sdata->vif.type != NL80211_IFTYPE_NAN ||
	    !FUNC3(sdata))
		return;

	FUNC4(&sdata->u.nan.func_lock);

	func = FUNC2(sdata, cookie);
	if (func)
		instance_id = func->instance_id;

	FUNC5(&sdata->u.nan.func_lock);

	if (instance_id)
		FUNC1(sdata->local, sdata, instance_id);
}