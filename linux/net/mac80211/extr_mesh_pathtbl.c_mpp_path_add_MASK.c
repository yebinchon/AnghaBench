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
struct mesh_path {int /*<<< orphan*/  walk_list; int /*<<< orphan*/  rhash; int /*<<< orphan*/  mpp; } ;
struct TYPE_5__ {int /*<<< orphan*/  mpp_paths_generation; struct mesh_table* mpp_paths; } ;
struct TYPE_6__ {TYPE_2__ mesh; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct mesh_path*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct mesh_path* FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mesh_rht_params ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ieee80211_sub_if_data *sdata,
		 const u8 *dst, const u8 *mpp)
{
	struct mesh_table *tbl;
	struct mesh_path *new_mpath;
	int ret;

	if (FUNC0(dst, sdata->vif.addr))
		/* never add ourselves as neighbours */
		return -ENOTSUPP;

	if (FUNC2(dst))
		return -ENOTSUPP;

	new_mpath = FUNC5(sdata, dst, GFP_ATOMIC);

	if (!new_mpath)
		return -ENOMEM;

	FUNC4(new_mpath->mpp, mpp, ETH_ALEN);
	tbl = sdata->u.mesh.mpp_paths;

	FUNC7(&tbl->walk_lock);
	ret = FUNC6(&tbl->rhead,
					    &new_mpath->rhash,
					    mesh_rht_params);
	if (!ret)
		FUNC1(&new_mpath->walk_list, &tbl->walk_head);
	FUNC8(&tbl->walk_lock);

	if (ret)
		FUNC3(new_mpath);

	sdata->u.mesh.mpp_paths_generation++;
	return ret;
}