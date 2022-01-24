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
struct dlm_lockstatus {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {TYPE_2__ lockname; } ;
struct TYPE_3__ {scalar_t__ node; int /*<<< orphan*/  cookie; } ;
struct dlm_lock {TYPE_1__ ml; struct dlm_lockstatus* lksb; } ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
		      struct dlm_lock *lock)
{
	int ret;
	struct dlm_lockstatus *lksb;
	int lksbflags;

	FUNC6(0, "%s: res %.*s, lock %u:%llu, Remote AST\n", dlm->name,
	     res->lockname.len, res->lockname.name,
	     FUNC2(FUNC1(lock->ml.cookie)),
	     FUNC3(FUNC1(lock->ml.cookie)));

	lksb = lock->lksb;
	FUNC0(lock->ml.node == dlm->node_num);

	lksbflags = lksb->flags;
	FUNC5(dlm, res, lock);

	/* lock request came from another node
	 * go do the ast over there */
	ret = FUNC4(dlm, res, lock, lksbflags);
	return ret;
}