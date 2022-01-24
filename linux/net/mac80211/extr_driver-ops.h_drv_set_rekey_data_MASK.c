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
struct cfg80211_gtk_rekey_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_rekey_data ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cfg80211_gtk_rekey_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cfg80211_gtk_rekey_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_gtk_rekey_data*) ; 

__attribute__((used)) static inline void FUNC4(struct ieee80211_local *local,
				      struct ieee80211_sub_if_data *sdata,
				      struct cfg80211_gtk_rekey_data *data)
{
	if (!FUNC0(sdata))
		return;

	FUNC3(local, sdata, data);
	if (local->ops->set_rekey_data)
		local->ops->set_rekey_data(&local->hw, &sdata->vif, data);
	FUNC2(local);
}