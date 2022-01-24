#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mesh_path {int flags; int /*<<< orphan*/  state_lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  dropped_frames_no_route; int /*<<< orphan*/  fwded_frames; int /*<<< orphan*/  fwded_unicast; int /*<<< orphan*/  dropped_frames_ttl; } ;
struct TYPE_8__ {int /*<<< orphan*/  dot11MeshForwarding; } ;
struct ieee80211_if_mesh {TYPE_4__ mshstats; TYPE_2__ mshcfg; } ;
struct TYPE_11__ {struct ieee80211_if_mesh mesh; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_1__ vif; } ;
struct ieee80211_mgmt {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
struct TYPE_12__ {TYPE_3__ sta; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int MESH_PATH_ACTIVE ; 
 int /*<<< orphan*/  MPATH_PREP ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*) ; 
 int* FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int const*) ; 
 int* FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
 int FUNC7 (int const*) ; 
 scalar_t__ FUNC8 (int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 struct mesh_path* FUNC10 (struct ieee80211_sub_if_data*,int const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_sub_if_data*,char*,int*) ; 
 TYPE_6__* FUNC13 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct ieee80211_sub_if_data *sdata,
				    struct ieee80211_mgmt *mgmt,
				    const u8 *prep_elem, u32 metric)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct mesh_path *mpath;
	const u8 *target_addr, *orig_addr;
	u8 ttl, hopcount, flags;
	u8 next_hop[ETH_ALEN];
	u32 target_sn, orig_sn, lifetime;

	FUNC12(sdata, "received PREP from %pM\n",
		  FUNC5(prep_elem));

	orig_addr = FUNC3(prep_elem);
	if (FUNC8(orig_addr, sdata->vif.addr))
		/* destination, no forwarding required */
		return;

	if (!ifmsh->mshcfg.dot11MeshForwarding)
		return;

	ttl = FUNC7(prep_elem);
	if (ttl <= 1) {
		sdata->u.mesh.mshstats.dropped_frames_ttl++;
		return;
	}

	FUNC14();
	mpath = FUNC10(sdata, orig_addr);
	if (mpath)
		FUNC16(&mpath->state_lock);
	else
		goto fail;
	if (!(mpath->flags & MESH_PATH_ACTIVE)) {
		FUNC17(&mpath->state_lock);
		goto fail;
	}
	FUNC9(next_hop, FUNC13(mpath)->sta.addr, ETH_ALEN);
	FUNC17(&mpath->state_lock);
	--ttl;
	flags = FUNC0(prep_elem);
	lifetime = FUNC2(prep_elem);
	hopcount = FUNC1(prep_elem) + 1;
	target_addr = FUNC5(prep_elem);
	target_sn = FUNC6(prep_elem);
	orig_sn = FUNC4(prep_elem);

	FUNC11(MPATH_PREP, flags, orig_addr, orig_sn, 0,
			       target_addr, target_sn, next_hop, hopcount,
			       ttl, lifetime, metric, 0, sdata);
	FUNC15();

	sdata->u.mesh.mshstats.fwded_unicast++;
	sdata->u.mesh.mshstats.fwded_frames++;
	return;

fail:
	FUNC15();
	sdata->u.mesh.mshstats.dropped_frames_no_route++;
}