#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ beacon_timeout; int /*<<< orphan*/  bcn_mon_timer; } ;
struct TYPE_8__ {TYPE_3__ mgd; } ;
struct TYPE_5__ {int driver_flags; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__* local; TYPE_1__ vif; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_MONITOR ; 
 int IEEE80211_VIF_BEACON_FILTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct ieee80211_sub_if_data *sdata)
{
	if (sdata->vif.driver_flags & IEEE80211_VIF_BEACON_FILTER)
		return;

	if (FUNC0(&sdata->local->hw, CONNECTION_MONITOR))
		return;

	FUNC1(&sdata->u.mgd.bcn_mon_timer,
		  FUNC2(jiffies + sdata->u.mgd.beacon_timeout));
}