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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* del_nan_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 

__attribute__((used)) static inline void FUNC5(struct ieee80211_local *local,
				   struct ieee80211_sub_if_data *sdata,
				   u8 instance_id)
{
	FUNC1();
	FUNC0(sdata);

	FUNC3(local, sdata, instance_id);
	if (local->ops->del_nan_func)
		local->ops->del_nan_func(&local->hw, &sdata->vif, instance_id);
	FUNC4(local);
}