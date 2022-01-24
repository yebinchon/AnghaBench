#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mesh_table {int /*<<< orphan*/  walk_lock; int /*<<< orphan*/  rhead; } ;
struct mesh_path {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mesh_table*,struct mesh_path*) ; 
 int /*<<< orphan*/  mesh_rht_params ; 
 struct mesh_path* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mesh_table *tbl,
			  struct ieee80211_sub_if_data *sdata,
			  const u8 *addr)
{
	struct mesh_path *mpath;

	FUNC2(&tbl->walk_lock);
	mpath = FUNC1(&tbl->rhead, addr, mesh_rht_params);
	if (!mpath) {
		FUNC3(&tbl->walk_lock);
		return -ENXIO;
	}

	FUNC0(tbl, mpath);
	FUNC3(&tbl->walk_lock);
	return 0;
}