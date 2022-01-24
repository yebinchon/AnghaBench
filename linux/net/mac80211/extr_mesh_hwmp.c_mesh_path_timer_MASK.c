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
struct timer_list {int dummy; } ;
struct mesh_path {int flags; scalar_t__ discovery_retries; int discovery_timeout; int /*<<< orphan*/  is_gate; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  exp_time; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ quiescing; } ;

/* Variables and functions */
 int MESH_PATH_REQ_QUEUED ; 
 int MESH_PATH_RESOLVED ; 
 int MESH_PATH_RESOLVING ; 
 struct mesh_path* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct mesh_path*) ; 
 int FUNC4 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct mesh_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,char*) ; 
 struct mesh_path* mpath ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

void FUNC9(struct timer_list *t)
{
	struct mesh_path *mpath = FUNC0(mpath, t, timer);
	struct ieee80211_sub_if_data *sdata = mpath->sdata;
	int ret;

	if (sdata->local->quiescing)
		return;

	FUNC7(&mpath->state_lock);
	if (mpath->flags & MESH_PATH_RESOLVED ||
			(!(mpath->flags & MESH_PATH_RESOLVING))) {
		mpath->flags &= ~(MESH_PATH_RESOLVING | MESH_PATH_RESOLVED);
		FUNC8(&mpath->state_lock);
	} else if (mpath->discovery_retries < FUNC1(sdata)) {
		++mpath->discovery_retries;
		mpath->discovery_timeout *= 2;
		mpath->flags &= ~MESH_PATH_REQ_QUEUED;
		FUNC8(&mpath->state_lock);
		FUNC5(mpath, 0);
	} else {
		mpath->flags &= ~(MESH_PATH_RESOLVING |
				  MESH_PATH_RESOLVED |
				  MESH_PATH_REQ_QUEUED);
		mpath->exp_time = jiffies;
		FUNC8(&mpath->state_lock);
		if (!mpath->is_gate && FUNC2(sdata) > 0) {
			ret = FUNC4(mpath);
			if (ret)
				FUNC6(sdata, "no gate was reachable\n");
		} else
			FUNC3(mpath);
	}
}