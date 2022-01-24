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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 struct ieee80211_sub_if_data* FUNC2 (struct ieee80211_vif*) ; 

void FUNC3(struct ieee80211_vif *vif, const u8 *bssid,
				const u8 *replay_ctr, gfp_t gfp)
{
	struct ieee80211_sub_if_data *sdata = FUNC2(vif);

	FUNC1(sdata, bssid, replay_ctr);

	FUNC0(sdata->dev, bssid, replay_ctr, gfp);
}