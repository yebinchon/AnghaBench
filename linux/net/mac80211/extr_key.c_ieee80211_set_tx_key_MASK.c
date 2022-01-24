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
struct sta_info {int /*<<< orphan*/  ptk_idx; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  keyidx; } ;
struct ieee80211_key {TYPE_1__ conf; struct ieee80211_local* local; struct sta_info* sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMPDU_KEYBORDER_SUPPORT ; 
 int /*<<< orphan*/  WLAN_STA_BLOCK_BA ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct ieee80211_key *key)
{
	struct sta_info *sta = key->sta;
	struct ieee80211_local *local = key->local;

	FUNC0(local);

	sta->ptk_idx = key->conf.keyidx;

	if (!FUNC3(&local->hw, AMPDU_KEYBORDER_SUPPORT))
		FUNC1(sta, WLAN_STA_BLOCK_BA);
	FUNC2(sta);

	return 0;
}