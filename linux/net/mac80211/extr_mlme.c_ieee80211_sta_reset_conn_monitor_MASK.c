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
struct ieee80211_if_managed {int /*<<< orphan*/  conn_mon_timer; scalar_t__ probe_send_count; int /*<<< orphan*/  associated; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_MONITOR ; 
 scalar_t__ IEEE80211_CONNECTION_IDLE_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

	if (FUNC3(!ifmgd->associated))
		return;

	if (ifmgd->probe_send_count)
		ifmgd->probe_send_count = 0;

	if (FUNC0(&sdata->local->hw, CONNECTION_MONITOR))
		return;

	FUNC1(&ifmgd->conn_mon_timer,
		  FUNC2(jiffies + IEEE80211_CONNECTION_IDLE_TIME));
}