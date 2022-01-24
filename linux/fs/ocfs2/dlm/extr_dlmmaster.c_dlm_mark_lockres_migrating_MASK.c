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
typedef  char* u8 ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {int migration_pending; int state; int /*<<< orphan*/  spinlock; TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  domain_map; int /*<<< orphan*/  migration_wq; int /*<<< orphan*/  ast_wq; int /*<<< orphan*/  node_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LOCK_RES_BLOCK_DIRTY ; 
 int DLM_LOCK_RES_DIRTY ; 
 int DLM_LOCK_RES_MIGRATING ; 
 int EHOSTDOWN ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*,struct dlm_lock_resource*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct dlm_ctxt *dlm,
				       struct dlm_lock_resource *res,
				       u8 target)
{
	int ret = 0;

	FUNC6(0, "dlm_mark_lockres_migrating: %.*s, from %u to %u\n",
	       res->lockname.len, res->lockname.name, dlm->node_num,
	       target);
	/* need to set MIGRATING flag on lockres.  this is done by
	 * ensuring that all asts have been flushed for this lockres. */
	FUNC8(&res->spinlock);
	FUNC0(res->migration_pending);
	res->migration_pending = 1;
	/* strategy is to reserve an extra ast then release
	 * it below, letting the release do all of the work */
	FUNC1(res);
	FUNC9(&res->spinlock);

	/* now flush all the pending asts */
	FUNC2(dlm, res);
	/* before waiting on DIRTY, block processes which may
	 * try to dirty the lockres before MIGRATING is set */
	FUNC8(&res->spinlock);
	FUNC0(res->state & DLM_LOCK_RES_BLOCK_DIRTY);
	res->state |= DLM_LOCK_RES_BLOCK_DIRTY;
	FUNC9(&res->spinlock);
	/* now wait on any pending asts and the DIRTY state */
	FUNC11(dlm->ast_wq, !FUNC3(dlm, res));
	FUNC4(dlm, res);

	FUNC6(0, "about to wait on migration_wq, dirty=%s\n",
	       res->state & DLM_LOCK_RES_DIRTY ? "yes" : "no");
	/* if the extra ref we just put was the final one, this
	 * will pass thru immediately.  otherwise, we need to wait
	 * for the last ast to finish. */
again:
	ret = FUNC12(dlm->migration_wq,
		   FUNC5(dlm, res, target),
		   FUNC7(1000));
	if (ret < 0) {
		FUNC6(0, "woken again: migrating? %s, dead? %s\n",
		       res->state & DLM_LOCK_RES_MIGRATING ? "yes":"no",
		       FUNC10(target, dlm->domain_map) ? "no":"yes");
	} else {
		FUNC6(0, "all is well: migrating? %s, dead? %s\n",
		       res->state & DLM_LOCK_RES_MIGRATING ? "yes":"no",
		       FUNC10(target, dlm->domain_map) ? "no":"yes");
	}
	if (!FUNC5(dlm, res, target)) {
		FUNC6(0, "trying again...\n");
		goto again;
	}

	ret = 0;
	/* did the target go down or die? */
	FUNC8(&dlm->spinlock);
	if (!FUNC10(target, dlm->domain_map)) {
		FUNC6(ML_ERROR, "aha. migration target %u just went down\n",
		     target);
		ret = -EHOSTDOWN;
	}
	FUNC9(&dlm->spinlock);

	/*
	 * if target is down, we need to clear DLM_LOCK_RES_BLOCK_DIRTY for
	 * another try; otherwise, we are sure the MIGRATING state is there,
	 * drop the unneeded state which blocked threads trying to DIRTY
	 */
	FUNC8(&res->spinlock);
	FUNC0(!(res->state & DLM_LOCK_RES_BLOCK_DIRTY));
	res->state &= ~DLM_LOCK_RES_BLOCK_DIRTY;
	if (!ret)
		FUNC0(!(res->state & DLM_LOCK_RES_MIGRATING));
	else
		res->migration_pending = 0;
	FUNC9(&res->spinlock);

	/*
	 * at this point:
	 *
	 *   o the DLM_LOCK_RES_MIGRATING flag is set if target not down
	 *   o there are no pending asts on this lockres
	 *   o all processes trying to reserve an ast on this
	 *     lockres must wait for the MIGRATING flag to clear
	 */
	return ret;
}