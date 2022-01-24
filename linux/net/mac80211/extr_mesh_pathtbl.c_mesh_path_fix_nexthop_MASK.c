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
struct sta_info {TYPE_1__* mesh; } ;
struct mesh_path {int sn; int flags; int /*<<< orphan*/  state_lock; scalar_t__ exp_time; scalar_t__ hop_count; scalar_t__ metric; } ;
struct TYPE_2__ {int /*<<< orphan*/  fail_avg; } ;

/* Variables and functions */
 int MESH_PATH_FIXED ; 
 int MESH_PATH_SN_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct mesh_path*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mesh_path *mpath, struct sta_info *next_hop)
{
	FUNC5(&mpath->state_lock);
	FUNC3(mpath, next_hop);
	mpath->sn = 0xffff;
	mpath->metric = 0;
	mpath->hop_count = 0;
	mpath->exp_time = 0;
	mpath->flags = MESH_PATH_FIXED | MESH_PATH_SN_VALID;
	FUNC2(mpath);
	FUNC6(&mpath->state_lock);
	FUNC1(&next_hop->mesh->fail_avg);
	/* init it at a low value - 0 start is tricky */
	FUNC0(&next_hop->mesh->fail_avg, 1);
	FUNC4(mpath);
}