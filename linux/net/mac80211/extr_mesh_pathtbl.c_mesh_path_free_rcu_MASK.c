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
struct mesh_table {int /*<<< orphan*/  entries; } ;
struct mesh_path {int flags; int /*<<< orphan*/  timer; int /*<<< orphan*/  state_lock; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  mpaths; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;

/* Variables and functions */
 int MESH_PATH_DELETED ; 
 int MESH_PATH_RESOLVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mesh_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mesh_table*,struct mesh_path*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mesh_table *tbl,
			       struct mesh_path *mpath)
{
	struct ieee80211_sub_if_data *sdata = mpath->sdata;

	FUNC4(&mpath->state_lock);
	mpath->flags |= MESH_PATH_RESOLVING | MESH_PATH_DELETED;
	FUNC3(tbl, mpath);
	FUNC5(&mpath->state_lock);
	FUNC1(&mpath->timer);
	FUNC0(&sdata->u.mesh.mpaths);
	FUNC0(&tbl->entries);
	FUNC2(mpath, rcu);
}