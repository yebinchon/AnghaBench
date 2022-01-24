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
struct ieee80211_sub_if_data {int /*<<< orphan*/  default_mgmt_key; int /*<<< orphan*/ * keys; int /*<<< orphan*/  local; } ;
struct ieee80211_key {int dummy; } ;

/* Variables and functions */
 int NUM_DEFAULT_KEYS ; 
 int NUM_DEFAULT_MGMT_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_key* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ieee80211_key*) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_sub_if_data *sdata, int idx)
{
	struct ieee80211_key *key = NULL;

	FUNC0(sdata->local);

	if (idx >= NUM_DEFAULT_KEYS &&
	    idx < NUM_DEFAULT_KEYS + NUM_DEFAULT_MGMT_KEYS)
		key = FUNC2(sdata->local, sdata->keys[idx]);

	FUNC3(sdata->default_mgmt_key, key);

	FUNC1(sdata);
}