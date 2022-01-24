#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sta_info {int /*<<< orphan*/ * ptk; int /*<<< orphan*/ * gtk; } ;
struct ieee80211_local {int /*<<< orphan*/  key_mtx; } ;
struct TYPE_4__ {int flags; } ;
struct ieee80211_key {TYPE_3__* sdata; TYPE_1__ conf; int /*<<< orphan*/  sta; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_2__ vif; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int NUM_DEFAULT_KEYS ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_key*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,struct ieee80211_key*,int /*<<< orphan*/ *) ; 
 struct ieee80211_key* FUNC3 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ieee80211_local *local,
			     struct sta_info *sta)
{
	struct ieee80211_key *key;
	int i;

	FUNC4(&local->key_mtx);
	for (i = 0; i < FUNC0(sta->gtk); i++) {
		key = FUNC3(local, sta->gtk[i]);
		if (!key)
			continue;
		FUNC2(key->sdata, key->sta,
				key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE,
				key, NULL);
		FUNC1(key, key->sdata->vif.type ==
					NL80211_IFTYPE_STATION);
	}

	for (i = 0; i < NUM_DEFAULT_KEYS; i++) {
		key = FUNC3(local, sta->ptk[i]);
		if (!key)
			continue;
		FUNC2(key->sdata, key->sta,
				key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE,
				key, NULL);
		FUNC1(key, key->sdata->vif.type ==
					NL80211_IFTYPE_STATION);
	}

	FUNC5(&local->key_mtx);
}