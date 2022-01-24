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
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_default_unicast_key ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ; 

__attribute__((used)) static inline void
FUNC5(struct ieee80211_local *local,
			    struct ieee80211_sub_if_data *sdata,
			    int key_idx)
{
	if (!FUNC1(sdata))
		return;

	FUNC0(key_idx < -1 || key_idx > 3);

	FUNC4(local, sdata, key_idx);
	if (local->ops->set_default_unicast_key)
		local->ops->set_default_unicast_key(&local->hw, &sdata->vif,
						    key_idx);
	FUNC3(local);
}