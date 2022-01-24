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
struct TYPE_2__ {int /*<<< orphan*/  aid; int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_1__ sta; int /*<<< orphan*/  sdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_STA_PS_DELIVER ; 
 int /*<<< orphan*/  WLAN_STA_PS_DRIVER ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sta_info *sta)
{
	FUNC2(sta->sdata, "STA %pM aid %d exits power save mode\n",
	       sta->sta.addr, sta->sta.aid);

	if (FUNC4(sta, WLAN_STA_PS_DRIVER)) {
		/*
		 * Clear the flag only if the other one is still set
		 * so that the TX path won't start TX'ing new frames
		 * directly ... In the case that the driver flag isn't
		 * set ieee80211_sta_ps_deliver_wakeup() will clear it.
		 */
		FUNC0(sta, WLAN_STA_PS_STA);
		FUNC2(sta->sdata, "STA %pM aid %d driver-ps-blocked\n",
		       sta->sta.addr, sta->sta.aid);
		return;
	}

	FUNC3(sta, WLAN_STA_PS_DELIVER);
	FUNC0(sta, WLAN_STA_PS_STA);
	FUNC1(sta);
}