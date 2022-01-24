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
typedef  int /*<<< orphan*/  u32 ;
struct sta_info {TYPE_1__* mesh; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ plink_state; int /*<<< orphan*/  plink_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_MESH_POWER_UNKNOWN ; 
 scalar_t__ NL80211_PLINK_BLOCKED ; 
 scalar_t__ NL80211_PLINK_ESTAB ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static u32 FUNC4(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	u32 changed = 0;

	FUNC2(&sta->mesh->plink_lock);

	if (sta->mesh->plink_state == NL80211_PLINK_ESTAB)
		changed = FUNC3(sdata);
	sta->mesh->plink_state = NL80211_PLINK_BLOCKED;

	FUNC1(sta);
	changed |= FUNC0(sta,
			NL80211_MESH_POWER_UNKNOWN);

	return changed;
}