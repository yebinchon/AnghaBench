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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sta_info {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_3__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_sub_if_data*,struct sta_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_local*,struct ieee80211_supported_band*,struct sta_info*,scalar_t__) ; 

void FUNC3(struct ieee80211_sub_if_data *sdata,
				 struct sta_info *sta, u8 opmode,
				 enum nl80211_band band)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_supported_band *sband = local->hw.wiphy->bands[band];

	u32 changed = FUNC0(sdata, sta, opmode, band);

	if (changed > 0) {
		FUNC1(sdata);
		FUNC2(local, sband, sta, changed);
	}
}