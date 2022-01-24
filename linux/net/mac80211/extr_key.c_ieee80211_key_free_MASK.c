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
struct TYPE_2__ {int flags; } ;
struct ieee80211_key {TYPE_1__ conf; int /*<<< orphan*/  sta; scalar_t__ sdata; } ;

/* Variables and functions */
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_key*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,struct ieee80211_key*,int /*<<< orphan*/ *) ; 

void FUNC2(struct ieee80211_key *key, bool delay_tailroom)
{
	if (!key)
		return;

	/*
	 * Replace key with nothingness if it was ever used.
	 */
	if (key->sdata)
		FUNC1(key->sdata, key->sta,
				key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE,
				key, NULL);
	FUNC0(key, delay_tailroom);
}