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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_3__ sta; } ;
struct mesh_path {int flags; int /*<<< orphan*/  state_lock; scalar_t__ sn; } ;
struct TYPE_8__ {int /*<<< orphan*/  dot11MeshForwarding; } ;
struct TYPE_6__ {int /*<<< orphan*/  dropped_frames_ttl; } ;
struct ieee80211_if_mesh {TYPE_4__ mshcfg; TYPE_2__ mshstats; } ;
struct TYPE_5__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct ieee80211_mgmt {int* sa; } ;

/* Variables and functions */
 int MESH_PATH_ACTIVE ; 
 int MESH_PATH_FIXED ; 
 int MESH_PATH_SN_VALID ; 
 int* FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 scalar_t__ FUNC2 (int const*) ; 
 int FUNC3 (int const*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  broadcast_addr ; 
 scalar_t__ FUNC5 (int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int,int const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mesh_path* FUNC7 (struct ieee80211_sub_if_data*,int const*) ; 
 struct sta_info* FUNC8 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_sub_if_data *sdata,
				    struct ieee80211_mgmt *mgmt,
				    const u8 *perr_elem)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct mesh_path *mpath;
	u8 ttl;
	const u8 *ta, *target_addr;
	u32 target_sn;
	u16 target_rcode;

	ta = mgmt->sa;
	ttl = FUNC3(perr_elem);
	if (ttl <= 1) {
		ifmsh->mshstats.dropped_frames_ttl++;
		return;
	}
	ttl--;
	target_addr = FUNC0(perr_elem);
	target_sn = FUNC2(perr_elem);
	target_rcode = FUNC1(perr_elem);

	FUNC9();
	mpath = FUNC7(sdata, target_addr);
	if (mpath) {
		struct sta_info *sta;

		FUNC11(&mpath->state_lock);
		sta = FUNC8(mpath);
		if (mpath->flags & MESH_PATH_ACTIVE &&
		    FUNC5(ta, sta->sta.addr) &&
		    !(mpath->flags & MESH_PATH_FIXED) &&
		    (!(mpath->flags & MESH_PATH_SN_VALID) ||
		    FUNC4(target_sn, mpath->sn)  || target_sn == 0)) {
			mpath->flags &= ~MESH_PATH_ACTIVE;
			if (target_sn != 0)
				mpath->sn = target_sn;
			else
				mpath->sn += 1;
			FUNC12(&mpath->state_lock);
			if (!ifmsh->mshcfg.dot11MeshForwarding)
				goto endperr;
			FUNC6(sdata, ttl, target_addr,
					   target_sn, target_rcode,
					   broadcast_addr);
		} else
			FUNC12(&mpath->state_lock);
	}
endperr:
	FUNC10();
}