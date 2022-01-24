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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  beacon; } ;
struct TYPE_7__ {int /*<<< orphan*/  presp; } ;
struct TYPE_6__ {int /*<<< orphan*/  beacon; } ;
struct TYPE_9__ {TYPE_3__ mesh; TYPE_2__ ibss; TYPE_1__ ap; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_5__ vif; } ;
struct beacon_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC0 (struct beacon_data*) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 struct beacon_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct ieee80211_sub_if_data* FUNC5 (struct ieee80211_vif*) ; 

u8 FUNC6(struct ieee80211_vif *vif)
{
	struct ieee80211_sub_if_data *sdata = FUNC5(vif);
	struct beacon_data *beacon = NULL;
	u8 count = 0;

	FUNC3();

	if (sdata->vif.type == NL80211_IFTYPE_AP)
		beacon = FUNC2(sdata->u.ap.beacon);
	else if (sdata->vif.type == NL80211_IFTYPE_ADHOC)
		beacon = FUNC2(sdata->u.ibss.presp);
	else if (FUNC1(&sdata->vif))
		beacon = FUNC2(sdata->u.mesh.beacon);

	if (!beacon)
		goto unlock;

	count = FUNC0(beacon);

unlock:
	FUNC4();
	return count;
}