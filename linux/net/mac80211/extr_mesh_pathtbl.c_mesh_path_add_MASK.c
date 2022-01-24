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
struct mesh_table {int /*<<< orphan*/  walk_lock; int /*<<< orphan*/  walk_head; int /*<<< orphan*/  rhead; } ;
struct mesh_path {int /*<<< orphan*/  walk_list; int /*<<< orphan*/  rhash; } ;
struct TYPE_5__ {int /*<<< orphan*/  mesh_paths_generation; struct mesh_table* mesh_paths; int /*<<< orphan*/  mpaths; } ;
struct TYPE_6__ {TYPE_2__ mesh; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  ENOTSUPP ; 
 struct mesh_path* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (struct mesh_path*) ; 
 int /*<<< orphan*/  MESH_MAX_MPATHS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (struct mesh_path*) ; 
 struct mesh_path* FUNC7 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mesh_rht_params ; 
 struct mesh_path* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct mesh_path *FUNC11(struct ieee80211_sub_if_data *sdata,
				const u8 *dst)
{
	struct mesh_table *tbl;
	struct mesh_path *mpath, *new_mpath;

	if (FUNC3(dst, sdata->vif.addr))
		/* never add ourselves as neighbours */
		return FUNC0(-ENOTSUPP);

	if (FUNC5(dst))
		return FUNC0(-ENOTSUPP);

	if (FUNC2(&sdata->u.mesh.mpaths, 1, MESH_MAX_MPATHS) == 0)
		return FUNC0(-ENOSPC);

	new_mpath = FUNC7(sdata, dst, GFP_ATOMIC);
	if (!new_mpath)
		return FUNC0(-ENOMEM);

	tbl = sdata->u.mesh.mesh_paths;
	FUNC9(&tbl->walk_lock);
	mpath = FUNC8(&tbl->rhead,
						  &new_mpath->rhash,
						  mesh_rht_params);
	if (!mpath)
		FUNC4(&new_mpath->walk_list, &tbl->walk_head);
	FUNC10(&tbl->walk_lock);

	if (mpath) {
		FUNC6(new_mpath);

		if (FUNC1(mpath))
			return mpath;

		new_mpath = mpath;
	}

	sdata->u.mesh.mesh_paths_generation++;
	return new_mpath;
}