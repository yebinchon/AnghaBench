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
struct fscache_operation {scalar_t__ state; int /*<<< orphan*/  flags; } ;
struct fscache_object {int /*<<< orphan*/  cookie; } ;
typedef  enum fscache_operation_state { ____Placeholder_fscache_operation_state } fscache_operation_state ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int ERESTARTSYS ; 
 scalar_t__ FSCACHE_OP_ST_CANCELLED ; 
 int /*<<< orphan*/  FSCACHE_OP_WAITING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct fscache_object*) ; 
 int FUNC3 (struct fscache_operation*,int) ; 
 scalar_t__ FUNC4 (struct fscache_object*) ; 
 int /*<<< orphan*/  fscache_op_signal ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct fscache_operation*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct fscache_object *object,
					  struct fscache_operation *op,
					  atomic_t *stat_op_waits,
					  atomic_t *stat_object_dead)
{
	int ret;

	if (!FUNC6(FSCACHE_OP_WAITING, &op->flags))
		goto check_if_dead;

	FUNC0(">>> WT");
	if (stat_op_waits)
		FUNC5(stat_op_waits);
	if (FUNC9(&op->flags, FSCACHE_OP_WAITING,
			TASK_INTERRUPTIBLE) != 0) {
		FUNC7(object->cookie, op, fscache_op_signal);
		ret = FUNC3(op, false);
		if (ret == 0)
			return -ERESTARTSYS;

		/* it's been removed from the pending queue by another party,
		 * so we should get to run shortly */
		FUNC9(&op->flags, FSCACHE_OP_WAITING,
			    TASK_UNINTERRUPTIBLE);
	}
	FUNC0("<<< GO");

check_if_dead:
	if (op->state == FSCACHE_OP_ST_CANCELLED) {
		if (stat_object_dead)
			FUNC5(stat_object_dead);
		FUNC1(" = -ENOBUFS [cancelled]");
		return -ENOBUFS;
	}
	if (FUNC8(FUNC4(object) ||
		     FUNC2(object))) {
		enum fscache_operation_state state = op->state;
		FUNC7(object->cookie, op, fscache_op_signal);
		FUNC3(op, true);
		if (stat_object_dead)
			FUNC5(stat_object_dead);
		FUNC1(" = -ENOBUFS [obj dead %d]", state);
		return -ENOBUFS;
	}
	return 0;
}