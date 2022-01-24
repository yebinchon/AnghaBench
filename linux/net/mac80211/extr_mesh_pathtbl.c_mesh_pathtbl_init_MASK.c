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
struct mesh_table {int /*<<< orphan*/  rhead; } ;
struct TYPE_3__ {struct mesh_table* mpp_paths; struct mesh_table* mesh_paths; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  mesh_rht_params ; 
 struct mesh_table* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mesh_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct ieee80211_sub_if_data *sdata)
{
	struct mesh_table *tbl_path, *tbl_mpp;
	int ret;

	tbl_path = FUNC0();
	if (!tbl_path)
		return -ENOMEM;

	tbl_mpp = FUNC0();
	if (!tbl_mpp) {
		ret = -ENOMEM;
		goto free_path;
	}

	FUNC2(&tbl_path->rhead, &mesh_rht_params);
	FUNC2(&tbl_mpp->rhead, &mesh_rht_params);

	sdata->u.mesh.mesh_paths = tbl_path;
	sdata->u.mesh.mpp_paths = tbl_mpp;

	return 0;

free_path:
	FUNC1(tbl_path);
	return ret;
}