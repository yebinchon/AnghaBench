#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  bc_buf; } ;
struct ieee80211_if_mesh {scalar_t__ mbss_changed; scalar_t__ wrkq_flags; int /*<<< orphan*/  mesh_path_timer; int /*<<< orphan*/  mesh_path_root_timer; int /*<<< orphan*/  housekeeping_timer; TYPE_4__ ps; int /*<<< orphan*/  beacon; scalar_t__ mesh_id_len; } ;
struct TYPE_10__ {struct ieee80211_if_mesh mesh; } ;
struct TYPE_8__ {int /*<<< orphan*/  mtx; } ;
struct TYPE_6__ {int enable_beacon; } ;
struct TYPE_7__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_3__ wdev; int /*<<< orphan*/  state; TYPE_2__ vif; int /*<<< orphan*/  dev; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  iff_allmultis; int /*<<< orphan*/  fif_other_bss; int /*<<< orphan*/  total_ps_buffered; } ;
struct beacon_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSS_CHANGED_BEACON_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDATA_STATE_OFFCHANNEL_BEACON_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct beacon_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct beacon_data* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*) ; 

void FUNC15(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct beacon_data *bcn;

	FUNC10(sdata->dev);

	/* flush STAs and mpaths on this iface */
	FUNC14(sdata);
	FUNC6(sdata, true);
	FUNC9(sdata);

	/* stop the beacon */
	ifmsh->mesh_id_len = 0;
	sdata->vif.bss_conf.enable_beacon = false;
	FUNC2(SDATA_STATE_OFFCHANNEL_BEACON_STOPPED, &sdata->state);
	FUNC4(sdata, BSS_CHANGED_BEACON_ENABLED);

	/* remove beacon */
	bcn = FUNC11(ifmsh->beacon,
					FUNC8(&sdata->wdev.mtx));
	FUNC0(ifmsh->beacon, NULL);
	FUNC7(bcn, rcu_head);

	/* free all potentially still buffered group-addressed frames */
	local->total_ps_buffered -= FUNC12(&ifmsh->ps.bc_buf);
	FUNC13(&ifmsh->ps.bc_buf);

	FUNC3(&sdata->u.mesh.housekeeping_timer);
	FUNC3(&sdata->u.mesh.mesh_path_root_timer);
	FUNC3(&sdata->u.mesh.mesh_path_timer);

	/* clear any mesh work (for next join) we may have accrued */
	ifmsh->wrkq_flags = 0;
	ifmsh->mbss_changed = 0;

	local->fif_other_bss--;
	FUNC1(&local->iff_allmultis);
	FUNC5(local);
}