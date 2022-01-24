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
struct mesh_table {int /*<<< orphan*/  gates_lock; int /*<<< orphan*/  known_gates; } ;
struct mesh_path {int is_gate; TYPE_3__* sdata; int /*<<< orphan*/  dst; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  gate_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_gates; struct mesh_table* mesh_paths; } ;
struct TYPE_5__ {TYPE_1__ mesh; } ;
struct TYPE_6__ {TYPE_2__ u; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct mesh_path *mpath)
{
	struct mesh_table *tbl;
	int err;

	FUNC2();
	tbl = mpath->sdata->u.mesh.mesh_paths;

	FUNC5(&mpath->state_lock);
	if (mpath->is_gate) {
		err = -EEXIST;
		FUNC7(&mpath->state_lock);
		goto err_rcu;
	}
	mpath->is_gate = true;
	mpath->sdata->u.mesh.num_gates++;

	FUNC4(&tbl->gates_lock);
	FUNC0(&mpath->gate_list, &tbl->known_gates);
	FUNC6(&tbl->gates_lock);

	FUNC7(&mpath->state_lock);

	FUNC1(mpath->sdata,
		  "Mesh path: Recorded new gate: %pM. %d known gates\n",
		  mpath->dst, mpath->sdata->u.mesh.num_gates);
	err = 0;
err_rcu:
	FUNC3();
	return err;
}