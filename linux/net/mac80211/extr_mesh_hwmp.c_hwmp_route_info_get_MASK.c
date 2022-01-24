#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct sta_info {TYPE_2__* mesh; } ;
struct mesh_path {int flags; scalar_t__ sn; scalar_t__ metric; unsigned long exp_time; int hop_count; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  path_change_count; int /*<<< orphan*/  next_hop; } ;
struct TYPE_3__ {int const* addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {int* sa; } ;
struct ieee80211_local {int dummy; } ;
typedef  enum mpath_frame_type { ____Placeholder_mpath_frame_type } mpath_frame_type ;
struct TYPE_4__ {int /*<<< orphan*/  fail_avg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mesh_path*) ; 
 scalar_t__ MAX_METRIC ; 
 scalar_t__ MAX_SANE_SN_DELTA ; 
 int MESH_PATH_ACTIVE ; 
 int MESH_PATH_FIXED ; 
 int MESH_PATH_SN_VALID ; 
#define  MPATH_PREP 129 
#define  MPATH_PREQ 128 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 unsigned long FUNC2 (int const*) ; 
 scalar_t__ FUNC3 (int const*) ; 
 int* FUNC4 (int const*) ; 
 scalar_t__ FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
 unsigned long FUNC7 (int const*) ; 
 scalar_t__ FUNC8 (int const*) ; 
 int* FUNC9 (int const*) ; 
 scalar_t__ FUNC10 (int const*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 unsigned long FUNC13 (unsigned long) ; 
 scalar_t__ FUNC14 (struct ieee80211_local*,struct sta_info*) ; 
 scalar_t__ FUNC15 (int const*,int const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct mesh_path*) ; 
 struct mesh_path* FUNC19 (struct ieee80211_sub_if_data*,int const*) ; 
 int /*<<< orphan*/  FUNC20 (struct mesh_path*,struct sta_info*) ; 
 struct mesh_path* FUNC21 (struct ieee80211_sub_if_data*,int const*) ; 
 int /*<<< orphan*/  FUNC22 (struct mesh_path*) ; 
 scalar_t__ FUNC23 (scalar_t__,int,int) ; 
 struct sta_info* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC29 (struct ieee80211_sub_if_data*,int*) ; 
 scalar_t__ FUNC30 (unsigned long,unsigned long) ; 

__attribute__((used)) static u32 FUNC31(struct ieee80211_sub_if_data *sdata,
			       struct ieee80211_mgmt *mgmt,
			       const u8 *hwmp_ie, enum mpath_frame_type action)
{
	struct ieee80211_local *local = sdata->local;
	struct mesh_path *mpath;
	struct sta_info *sta;
	bool fresh_info;
	const u8 *orig_addr, *ta;
	u32 orig_sn, orig_metric;
	unsigned long orig_lifetime, exp_time;
	u32 last_hop_metric, new_metric;
	bool process = true;
	u8 hopcount;

	FUNC25();
	sta = FUNC29(sdata, mgmt->sa);
	if (!sta) {
		FUNC26();
		return 0;
	}

	last_hop_metric = FUNC14(local, sta);
	/* Update and check originator routing info */
	fresh_info = true;

	switch (action) {
	case MPATH_PREQ:
		orig_addr = FUNC9(hwmp_ie);
		orig_sn = FUNC10(hwmp_ie);
		orig_lifetime = FUNC7(hwmp_ie);
		orig_metric = FUNC8(hwmp_ie);
		hopcount = FUNC6(hwmp_ie) + 1;
		break;
	case MPATH_PREP:
		/* Originator here refers to the MP that was the target in the
		 * Path Request. We divert from the nomenclature in the draft
		 * so that we can easily use a single function to gather path
		 * information from both PREQ and PREP frames.
		 */
		orig_addr = FUNC4(hwmp_ie);
		orig_sn = FUNC5(hwmp_ie);
		orig_lifetime = FUNC2(hwmp_ie);
		orig_metric = FUNC3(hwmp_ie);
		hopcount = FUNC1(hwmp_ie) + 1;
		break;
	default:
		FUNC26();
		return 0;
	}
	new_metric = orig_metric + last_hop_metric;
	if (new_metric < orig_metric)
		new_metric = MAX_METRIC;
	exp_time = FUNC13(orig_lifetime);

	if (FUNC15(orig_addr, sdata->vif.addr)) {
		/* This MP is the originator, we are not interested in this
		 * frame, except for updating transmitter's path info.
		 */
		process = false;
		fresh_info = false;
	} else {
		mpath = FUNC21(sdata, orig_addr);
		if (mpath) {
			FUNC27(&mpath->state_lock);
			if (mpath->flags & MESH_PATH_FIXED)
				fresh_info = false;
			else if ((mpath->flags & MESH_PATH_ACTIVE) &&
			    (mpath->flags & MESH_PATH_SN_VALID)) {
				if (FUNC12(mpath->sn, orig_sn) ||
				    (mpath->sn == orig_sn &&
				     (FUNC24(mpath->next_hop) !=
						      sta ?
					      FUNC23(new_metric, 10, 9) :
					      new_metric) >= mpath->metric)) {
					process = false;
					fresh_info = false;
				}
			} else if (!(mpath->flags & MESH_PATH_ACTIVE)) {
				bool have_sn, newer_sn, bounced;

				have_sn = mpath->flags & MESH_PATH_SN_VALID;
				newer_sn = have_sn && FUNC12(orig_sn, mpath->sn);
				bounced = have_sn &&
					  (FUNC11(orig_sn, mpath->sn) >
							MAX_SANE_SN_DELTA);

				if (!have_sn || newer_sn) {
					/* if SN is newer than what we had
					 * then we can take it */;
				} else if (bounced) {
					/* if SN is way different than what
					 * we had then assume the other side
					 * rebooted or restarted */;
				} else {
					process = false;
					fresh_info = false;
				}
			}
		} else {
			mpath = FUNC19(sdata, orig_addr);
			if (FUNC0(mpath)) {
				FUNC26();
				return 0;
			}
			FUNC27(&mpath->state_lock);
		}

		if (fresh_info) {
			if (FUNC24(mpath->next_hop) != sta)
				mpath->path_change_count++;
			FUNC20(mpath, sta);
			mpath->flags |= MESH_PATH_SN_VALID;
			mpath->metric = new_metric;
			mpath->sn = orig_sn;
			mpath->exp_time = FUNC30(mpath->exp_time, exp_time)
					  ?  mpath->exp_time : exp_time;
			mpath->hop_count = hopcount;
			FUNC18(mpath);
			FUNC28(&mpath->state_lock);
			FUNC17(&sta->mesh->fail_avg);
			/* init it at a low value - 0 start is tricky */
			FUNC16(&sta->mesh->fail_avg, 1);
			FUNC22(mpath);
			/* draft says preq_id should be saved to, but there does
			 * not seem to be any use for it, skipping by now
			 */
		} else
			FUNC28(&mpath->state_lock);
	}

	/* Update and check transmitter routing info */
	ta = mgmt->sa;
	if (FUNC15(orig_addr, ta))
		fresh_info = false;
	else {
		fresh_info = true;

		mpath = FUNC21(sdata, ta);
		if (mpath) {
			FUNC27(&mpath->state_lock);
			if ((mpath->flags & MESH_PATH_FIXED) ||
			    ((mpath->flags & MESH_PATH_ACTIVE) &&
			     ((FUNC24(mpath->next_hop) != sta ?
				       FUNC23(last_hop_metric, 10, 9) :
				       last_hop_metric) > mpath->metric)))
				fresh_info = false;
		} else {
			mpath = FUNC19(sdata, ta);
			if (FUNC0(mpath)) {
				FUNC26();
				return 0;
			}
			FUNC27(&mpath->state_lock);
		}

		if (fresh_info) {
			if (FUNC24(mpath->next_hop) != sta)
				mpath->path_change_count++;
			FUNC20(mpath, sta);
			mpath->metric = last_hop_metric;
			mpath->exp_time = FUNC30(mpath->exp_time, exp_time)
					  ?  mpath->exp_time : exp_time;
			mpath->hop_count = 1;
			FUNC18(mpath);
			FUNC28(&mpath->state_lock);
			FUNC17(&sta->mesh->fail_avg);
			/* init it at a low value - 0 start is tricky */
			FUNC16(&sta->mesh->fail_avg, 1);
			FUNC22(mpath);
		} else
			FUNC28(&mpath->state_lock);
	}

	FUNC26();

	return process ? new_metric : 0;
}