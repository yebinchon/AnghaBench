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
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  sta_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;

	FUNC1(&local->sta_mtx);
	FUNC0(sdata);
	FUNC2(&local->sta_mtx);
}