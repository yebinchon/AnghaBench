#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mesh_preq_queue {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; int /*<<< orphan*/  dst; } ;
struct mesh_path {int flags; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dst; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct ieee80211_if_mesh {scalar_t__ preq_queue_len; scalar_t__ last_preq; int /*<<< orphan*/  mesh_path_timer; int /*<<< orphan*/  mesh_preq_queue_lock; TYPE_2__ preq_queue; } ;
struct TYPE_4__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  work; TYPE_3__* local; TYPE_1__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_PREQ_QUEUE_LEN ; 
 int MESH_PATH_REQ_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct mesh_preq_queue*) ; 
 struct mesh_preq_queue* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,char*) ; 
 scalar_t__ FUNC6 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct mesh_path *mpath, u8 flags)
{
	struct ieee80211_sub_if_data *sdata = mpath->sdata;
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct mesh_preq_queue *preq_node;

	preq_node = FUNC2(sizeof(struct mesh_preq_queue), GFP_ATOMIC);
	if (!preq_node) {
		FUNC5(sdata, "could not allocate PREQ node\n");
		return;
	}

	FUNC10(&ifmsh->mesh_preq_queue_lock);
	if (ifmsh->preq_queue_len == MAX_PREQ_QUEUE_LEN) {
		FUNC12(&ifmsh->mesh_preq_queue_lock);
		FUNC1(preq_node);
		if (FUNC8())
			FUNC5(sdata, "PREQ node queue full\n");
		return;
	}

	FUNC9(&mpath->state_lock);
	if (mpath->flags & MESH_PATH_REQ_QUEUED) {
		FUNC11(&mpath->state_lock);
		FUNC12(&ifmsh->mesh_preq_queue_lock);
		FUNC1(preq_node);
		return;
	}

	FUNC4(preq_node->dst, mpath->dst, ETH_ALEN);
	preq_node->flags = flags;

	mpath->flags |= MESH_PATH_REQ_QUEUED;
	FUNC11(&mpath->state_lock);

	FUNC3(&preq_node->list, &ifmsh->preq_queue.list);
	++ifmsh->preq_queue_len;
	FUNC12(&ifmsh->mesh_preq_queue_lock);

	if (FUNC13(jiffies, ifmsh->last_preq + FUNC6(sdata)))
		FUNC0(&sdata->local->hw, &sdata->work);

	else if (FUNC14(jiffies, ifmsh->last_preq)) {
		/* avoid long wait if did not send preqs for a long time
		 * and jiffies wrapped around
		 */
		ifmsh->last_preq = jiffies - FUNC6(sdata) - 1;
		FUNC0(&sdata->local->hw, &sdata->work);
	} else
		FUNC7(&ifmsh->mesh_path_timer, ifmsh->last_preq +
						FUNC6(sdata));
}