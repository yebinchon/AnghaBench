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
struct dlm_lockstatus {struct dlm_lock* lockid; } ;
struct dlm_lock_resource {scalar_t__ owner; int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct dlm_lock {TYPE_1__ ml; struct dlm_lock_resource* lockres; } ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  ast_wq; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
typedef  int /*<<< orphan*/  (* dlm_astunlockfunc_t ) (void*,int) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_BADARGS ; 
 int DLM_BADPARAM ; 
 int DLM_CANCELGRANT ; 
 int DLM_FORWARD ; 
 int DLM_MIGRATING ; 
 int DLM_NOLOCKMGR ; 
 int DLM_NORMAL ; 
 int DLM_RECOVERING ; 
 int LKM_CANCEL ; 
 scalar_t__ LKM_EXMODE ; 
 int LKM_INVVALBLK ; 
 int LKM_VALBLK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ctxt*,struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_lock_resource*) ; 
 int FUNC9 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,struct dlm_lockstatus*,int,int*) ; 
 int FUNC10 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,struct dlm_lockstatus*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (void*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum dlm_status FUNC17(struct dlm_ctxt *dlm, struct dlm_lockstatus *lksb,
			  int flags, dlm_astunlockfunc_t *unlockast, void *data)
{
	enum dlm_status status;
	struct dlm_lock_resource *res;
	struct dlm_lock *lock = NULL;
	int call_ast, is_master;

	if (!lksb) {
		FUNC1(DLM_BADARGS);
		return DLM_BADARGS;
	}

	if (flags & ~(LKM_CANCEL | LKM_VALBLK | LKM_INVVALBLK)) {
		FUNC1(DLM_BADPARAM);
		return DLM_BADPARAM;
	}

	if ((flags & (LKM_VALBLK | LKM_CANCEL)) == (LKM_VALBLK | LKM_CANCEL)) {
		FUNC11(0, "VALBLK given with CANCEL: ignoring VALBLK\n");
		flags &= ~LKM_VALBLK;
	}

	if (!lksb->lockid || !lksb->lockid->lockres) {
		FUNC1(DLM_BADPARAM);
		return DLM_BADPARAM;
	}

	lock = lksb->lockid;
	FUNC0(!lock);
	FUNC4(lock);

	res = lock->lockres;
	FUNC0(!res);
	FUNC7(res);
retry:
	call_ast = 0;
	/* need to retry up here because owner may have changed */
	FUNC11(0, "lock=%p res=%p\n", lock, res);

	FUNC13(&res->spinlock);
	is_master = (res->owner == dlm->node_num);
	if (flags & LKM_VALBLK && lock->ml.type != LKM_EXMODE)
		flags &= ~LKM_VALBLK;
	FUNC14(&res->spinlock);

	if (is_master) {
		status = FUNC9(dlm, res, lock, lksb, flags,
					  &call_ast);
		FUNC11(0, "done calling dlmunlock_master: returned %d, "
		     "call_ast is %d\n", status, call_ast);
	} else {
		status = FUNC10(dlm, res, lock, lksb, flags,
					  &call_ast);
		FUNC11(0, "done calling dlmunlock_remote: returned %d, "
		     "call_ast is %d\n", status, call_ast);
	}

	if (status == DLM_RECOVERING ||
	    status == DLM_MIGRATING ||
	    status == DLM_FORWARD ||
	    status == DLM_NOLOCKMGR) {

		/* We want to go away for a tiny bit to allow recovery
		 * / migration to complete on this resource. I don't
		 * know of any wait queue we could sleep on as this
		 * may be happening on another node. Perhaps the
		 * proper solution is to queue up requests on the
		 * other end? */

		/* do we want to yield(); ?? */
		FUNC12(50);

		FUNC11(0, "retrying unlock due to pending recovery/"
		     "migration/in-progress/reconnect\n");
		goto retry;
	}

	if (call_ast) {
		FUNC11(0, "calling unlockast(%p, %d)\n", data, status);
		if (is_master) {
			/* it is possible that there is one last bast
			 * pending.  make sure it is flushed, then
			 * call the unlockast.
			 * not an issue if this is a mastered remotely,
			 * since this lock has been removed from the
			 * lockres queues and cannot be found. */
			FUNC2(dlm, NULL);
			FUNC16(dlm->ast_wq,
				   FUNC3(dlm, lock));
		}
		(*unlockast)(data, status);
	}

	if (status == DLM_CANCELGRANT)
		status = DLM_NORMAL;

	if (status == DLM_NORMAL) {
		FUNC11(0, "kicking the thread\n");
		FUNC2(dlm, res);
	} else
		FUNC1(status);

	FUNC6(dlm, res);
	FUNC8(res);
	FUNC5(lock);

	FUNC11(0, "returning status=%d!\n", status);
	return status;
}