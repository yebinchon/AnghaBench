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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
	int ret;
	int lock_dropped = 0;
	u8 target = O2NM_MAX_NODES;

	FUNC0(&dlm->spinlock);

	FUNC5(&res->spinlock);
	if (FUNC1(dlm, res))
		target = FUNC3(dlm, res);
	FUNC6(&res->spinlock);

	if (target == O2NM_MAX_NODES)
		goto leave;

	/* Wheee! Migrate lockres here! Will sleep so drop spinlock. */
	FUNC6(&dlm->spinlock);
	lock_dropped = 1;
	ret = FUNC2(dlm, res, target);
	if (ret)
		FUNC4(0, "%s: res %.*s, Migrate to node %u failed with %d\n",
		     dlm->name, res->lockname.len, res->lockname.name,
		     target, ret);
	FUNC5(&dlm->spinlock);
leave:
	return lock_dropped;
}