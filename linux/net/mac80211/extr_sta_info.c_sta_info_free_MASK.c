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
struct TYPE_2__ {int /*<<< orphan*/  rates; scalar_t__* txq; int /*<<< orphan*/  addr; } ;
struct sta_info {int /*<<< orphan*/  pcpu_rx_stats; struct sta_info* mesh; TYPE_1__ sta; int /*<<< orphan*/  sdata; scalar_t__ rate_ctrl; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 struct sta_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC5 (scalar_t__) ; 

void FUNC6(struct ieee80211_local *local, struct sta_info *sta)
{
	if (sta->rate_ctrl)
		FUNC2(sta);

	FUNC4(sta->sdata, "Destroyed STA %pM\n", sta->sta.addr);

	if (sta->sta.txq[0])
		FUNC1(FUNC5(sta->sta.txq[0]));
	FUNC1(FUNC3(sta->sta.rates));
#ifdef CONFIG_MAC80211_MESH
	kfree(sta->mesh);
#endif
	FUNC0(sta->pcpu_rx_stats);
	FUNC1(sta);
}