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
struct mesh_table {int /*<<< orphan*/  rhead; } ;
struct mesh_path {int /*<<< orphan*/  rhash; int /*<<< orphan*/  walk_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mesh_table*,struct mesh_path*) ; 
 int /*<<< orphan*/  mesh_rht_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mesh_table *tbl, struct mesh_path *mpath)
{
	FUNC0(&mpath->walk_list);
	FUNC2(&tbl->rhead, &mpath->rhash, mesh_rht_params);
	FUNC1(tbl, mpath);
}