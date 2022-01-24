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
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int,int) ; 
 struct ieee80211_sub_if_data* FUNC2 (struct ieee80211_vif*) ; 

void FUNC3(struct ieee80211_vif *vif,
				    int rssi_min_thold,
				    int rssi_max_thold)
{
	struct ieee80211_sub_if_data *sdata = FUNC2(vif);

	FUNC0(rssi_min_thold == rssi_max_thold ||
		rssi_min_thold > rssi_max_thold);

	FUNC1(sdata, rssi_min_thold,
				       rssi_max_thold);
}