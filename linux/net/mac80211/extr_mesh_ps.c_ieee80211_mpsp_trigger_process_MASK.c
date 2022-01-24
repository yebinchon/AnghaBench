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
typedef  int u8 ;
struct sta_info {TYPE_1__* mesh; } ;
struct TYPE_2__ {scalar_t__ local_pm; } ;

/* Variables and functions */
 int IEEE80211_QOS_CTL_EOSP ; 
 int IEEE80211_QOS_CTL_RSPI ; 
 scalar_t__ NL80211_MESH_POWER_ACTIVE ; 
 int /*<<< orphan*/  WLAN_STA_MPSP_OWNER ; 
 int /*<<< orphan*/  WLAN_STA_MPSP_RECIPIENT ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sta_info*,int /*<<< orphan*/ ) ; 

void FUNC5(u8 *qc, struct sta_info *sta,
				    bool tx, bool acked)
{
	u8 rspi = qc[1] & (IEEE80211_QOS_CTL_RSPI >> 8);
	u8 eosp = qc[0] & IEEE80211_QOS_CTL_EOSP;

	if (tx) {
		if (rspi && acked)
			FUNC2(sta, WLAN_STA_MPSP_RECIPIENT);

		if (eosp)
			FUNC0(sta, WLAN_STA_MPSP_OWNER);
		else if (acked &&
			 FUNC4(sta, WLAN_STA_PS_STA) &&
			 !FUNC3(sta, WLAN_STA_MPSP_OWNER))
			FUNC1(sta, -1);
	} else {
		if (eosp)
			FUNC0(sta, WLAN_STA_MPSP_RECIPIENT);
		else if (sta->mesh->local_pm != NL80211_MESH_POWER_ACTIVE)
			FUNC2(sta, WLAN_STA_MPSP_RECIPIENT);

		if (rspi && !FUNC3(sta, WLAN_STA_MPSP_OWNER))
			FUNC1(sta, -1);
	}
}