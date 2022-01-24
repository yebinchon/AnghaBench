#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  wdev; } ;
struct cfg80211_wowlan_wakeup {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cfg80211_wowlan_wakeup*,int /*<<< orphan*/ ) ; 
 struct ieee80211_sub_if_data* FUNC1 (struct ieee80211_vif*) ; 

void FUNC2(struct ieee80211_vif *vif,
				    struct cfg80211_wowlan_wakeup *wakeup,
				    gfp_t gfp)
{
	struct ieee80211_sub_if_data *sdata = FUNC1(vif);

	FUNC0(&sdata->wdev, wakeup, gfp);
}