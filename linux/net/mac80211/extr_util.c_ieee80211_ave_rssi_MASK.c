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
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_if_managed {int /*<<< orphan*/  ave_beacon_signal; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC2 (struct ieee80211_vif*) ; 

int FUNC3(struct ieee80211_vif *vif)
{
	struct ieee80211_sub_if_data *sdata = FUNC2(vif);
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

	if (FUNC0(sdata->vif.type != NL80211_IFTYPE_STATION)) {
		/* non-managed type inferfaces */
		return 0;
	}
	return -FUNC1(&ifmgd->ave_beacon_signal);
}