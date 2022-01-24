#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_4__* mesh; TYPE_1__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  user_mpm; } ;
struct TYPE_7__ {TYPE_2__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  plink_timer; int /*<<< orphan*/  plink_lock; int /*<<< orphan*/  reason; int /*<<< orphan*/  plid; int /*<<< orphan*/  llid; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_REASON_MESH_PEER_CANCELED ; 
 int /*<<< orphan*/  WLAN_SP_MESH_PEERING_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sta_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

u32 FUNC7(struct sta_info *sta)
{
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	u32 changed;

	FUNC4(&sta->mesh->plink_lock);
	changed = FUNC0(sta);

	if (!sdata->u.mesh.user_mpm) {
		sta->mesh->reason = WLAN_REASON_MESH_PEER_CANCELED;
		FUNC3(sdata, sta, WLAN_SP_MESH_PEERING_CLOSE,
				    sta->sta.addr, sta->mesh->llid,
				    sta->mesh->plid, sta->mesh->reason);
	}
	FUNC5(&sta->mesh->plink_lock);
	if (!sdata->u.mesh.user_mpm)
		FUNC1(&sta->mesh->plink_timer);
	FUNC2(sta);

	/* make sure no readers can access nexthop sta from here on */
	FUNC6();

	return changed;
}