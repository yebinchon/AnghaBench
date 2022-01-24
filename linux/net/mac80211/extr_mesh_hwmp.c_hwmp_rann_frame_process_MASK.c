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
struct sta_info {int dummy; } ;
struct mesh_path {scalar_t__ sn; scalar_t__ rann_metric; int flags; int is_root; int /*<<< orphan*/  rann_snd_addr; scalar_t__ last_preq_to_root; } ;
struct TYPE_8__ {scalar_t__ dot11MeshForwarding; } ;
struct TYPE_7__ {int /*<<< orphan*/  dropped_frames_ttl; int /*<<< orphan*/  dropped_frames_no_route; } ;
struct ieee80211_if_mesh {TYPE_4__ mshcfg; TYPE_3__ mshstats; } ;
struct TYPE_6__ {struct ieee80211_if_mesh mesh; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_rann_ie {int rann_ttl; int rann_flags; int* rann_addr; int rann_hopcount; int /*<<< orphan*/  rann_metric; int /*<<< orphan*/  rann_interval; int /*<<< orphan*/  rann_seq; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  sa; } ;
struct ieee80211_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (struct mesh_path*) ; 
 scalar_t__ MAX_METRIC ; 
 int MESH_PATH_ACTIVE ; 
 int MESH_PATH_FIXED ; 
 int MESH_PATH_RESOLVING ; 
 int /*<<< orphan*/  MPATH_RANN ; 
 int PREQ_Q_F_REFRESH ; 
 int PREQ_Q_F_START ; 
 int RANN_FLAG_IS_GATE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ieee80211_local*,struct sta_info*) ; 
 int /*<<< orphan*/  broadcast_addr ; 
 scalar_t__ FUNC3 (int const*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mesh_path* FUNC6 (struct ieee80211_sub_if_data*,int const*) ; 
 int /*<<< orphan*/  FUNC7 (struct mesh_path*) ; 
 struct mesh_path* FUNC8 (struct ieee80211_sub_if_data*,int const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct mesh_path*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_sub_if_data*,char*,int const*,...) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (struct ieee80211_sub_if_data*) ; 
 struct sta_info* FUNC15 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC18(struct ieee80211_sub_if_data *sdata,
				    struct ieee80211_mgmt *mgmt,
				    const struct ieee80211_rann_ie *rann)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct ieee80211_local *local = sdata->local;
	struct sta_info *sta;
	struct mesh_path *mpath;
	u8 ttl, flags, hopcount;
	const u8 *orig_addr;
	u32 orig_sn, new_metric, orig_metric, last_hop_metric, interval;
	bool root_is_gate;

	ttl = rann->rann_ttl;
	flags = rann->rann_flags;
	root_is_gate = !!(flags & RANN_FLAG_IS_GATE);
	orig_addr = rann->rann_addr;
	orig_sn = FUNC4(rann->rann_seq);
	interval = FUNC4(rann->rann_interval);
	hopcount = rann->rann_hopcount;
	hopcount++;
	orig_metric = FUNC4(rann->rann_metric);

	/*  Ignore our own RANNs */
	if (FUNC3(orig_addr, sdata->vif.addr))
		return;

	FUNC11(sdata,
		  "received RANN from %pM via neighbour %pM (is_gate=%d)\n",
		  orig_addr, mgmt->sa, root_is_gate);

	FUNC12();
	sta = FUNC15(sdata, mgmt->sa);
	if (!sta) {
		FUNC13();
		return;
	}

	last_hop_metric = FUNC2(local, sta);
	new_metric = orig_metric + last_hop_metric;
	if (new_metric < orig_metric)
		new_metric = MAX_METRIC;

	mpath = FUNC8(sdata, orig_addr);
	if (!mpath) {
		mpath = FUNC6(sdata, orig_addr);
		if (FUNC0(mpath)) {
			FUNC13();
			sdata->u.mesh.mshstats.dropped_frames_no_route++;
			return;
		}
	}

	if (!(FUNC1(mpath->sn, orig_sn)) &&
	    !(mpath->sn == orig_sn && new_metric < mpath->rann_metric)) {
		FUNC13();
		return;
	}

	if ((!(mpath->flags & (MESH_PATH_ACTIVE | MESH_PATH_RESOLVING)) ||
	     (FUNC16(jiffies, mpath->last_preq_to_root +
				  FUNC14(sdata)) ||
	     FUNC17(jiffies, mpath->last_preq_to_root))) &&
	     !(mpath->flags & MESH_PATH_FIXED) && (ttl != 0)) {
		FUNC11(sdata,
			  "time to refresh root mpath %pM\n",
			  orig_addr);
		FUNC10(mpath, PREQ_Q_F_START | PREQ_Q_F_REFRESH);
		mpath->last_preq_to_root = jiffies;
	}

	mpath->sn = orig_sn;
	mpath->rann_metric = new_metric;
	mpath->is_root = true;
	/* Recording RANNs sender address to send individually
	 * addressed PREQs destined for root mesh STA */
	FUNC5(mpath->rann_snd_addr, mgmt->sa, ETH_ALEN);

	if (root_is_gate)
		FUNC7(mpath);

	if (ttl <= 1) {
		ifmsh->mshstats.dropped_frames_ttl++;
		FUNC13();
		return;
	}
	ttl--;

	if (ifmsh->mshcfg.dot11MeshForwarding) {
		FUNC9(MPATH_RANN, flags, orig_addr,
				       orig_sn, 0, NULL, 0, broadcast_addr,
				       hopcount, ttl, interval,
				       new_metric, 0, sdata);
	}

	FUNC13();
}