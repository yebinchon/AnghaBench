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
struct TYPE_6__ {int len; int name; } ;
struct dlm_lock_resource {int state; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; TYPE_3__ lockname; int /*<<< orphan*/  converting; } ;
struct TYPE_4__ {int type; int convert_type; int /*<<< orphan*/  cookie; } ;
struct dlm_lock {int convert_pending; TYPE_2__* lksb; TYPE_1__ ml; int /*<<< orphan*/  list; } ;
struct dlm_ctxt {int name; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int DLM_DENIED ; 
 int /*<<< orphan*/  DLM_LKSB_GET_LVB ; 
 int /*<<< orphan*/  DLM_LKSB_PUT_LVB ; 
 int DLM_LOCK_RES_IN_PROGRESS ; 
 int DLM_LOCK_RES_RECOVERING ; 
 int DLM_NORMAL ; 
 int DLM_NOTQUEUED ; 
 int DLM_RECOVERING ; 
 int LKM_EXMODE ; 
 int LKM_GET_LVB ; 
 int LKM_IVMODE ; 
 int LKM_NLMODE ; 
 int LKM_PUT_LVB ; 
 int LKM_VALBLK ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_lock_resource*,struct dlm_lock*) ; 
 int FUNC7 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

enum dlm_status FUNC13(struct dlm_ctxt *dlm,
				  struct dlm_lock_resource *res,
				  struct dlm_lock *lock, int flags, int type)
{
	enum dlm_status status;

	FUNC9(0, "type=%d, convert_type=%d, busy=%d\n", lock->ml.type,
	     lock->ml.convert_type, res->state & DLM_LOCK_RES_IN_PROGRESS);

	FUNC10(&res->spinlock);
	if (res->state & DLM_LOCK_RES_RECOVERING) {
		FUNC9(0, "bailing out early since res is RECOVERING "
		     "on secondary queue\n");
		/* __dlm_print_one_lock_resource(res); */
		status = DLM_RECOVERING;
		goto bail;
	}
	/* will exit this call with spinlock held */
	FUNC1(res);

	if (lock->ml.convert_type != LKM_IVMODE) {
		FUNC0(res);
		FUNC9(ML_ERROR, "converting a remote lock that is already "
		     "converting! (cookie=%u:%llu, conv=%d)\n",
		     FUNC4(FUNC2(lock->ml.cookie)),
		     FUNC5(FUNC2(lock->ml.cookie)),
		     lock->ml.convert_type);
		status = DLM_DENIED;
		goto bail;
	}

	if (lock->ml.type == type && lock->ml.convert_type == LKM_IVMODE) {
		FUNC9(0, "last convert request returned DLM_RECOVERING, but "
		     "owner has already queued and sent ast to me. res %.*s, "
		     "(cookie=%u:%llu, type=%d, conv=%d)\n",
		     res->lockname.len, res->lockname.name,
		     FUNC4(FUNC2(lock->ml.cookie)),
		     FUNC5(FUNC2(lock->ml.cookie)),
		     lock->ml.type, lock->ml.convert_type);
		status = DLM_NORMAL;
		goto bail;
	}

	res->state |= DLM_LOCK_RES_IN_PROGRESS;
	/* move lock to local convert queue */
	/* do not alter lock refcount.  switching lists. */
	FUNC8(&lock->list, &res->converting);
	lock->convert_pending = 1;
	lock->ml.convert_type = type;

	if (flags & LKM_VALBLK) {
		if (lock->ml.type == LKM_EXMODE) {
			flags |= LKM_PUT_LVB;
			lock->lksb->flags |= DLM_LKSB_PUT_LVB;
		} else {
			if (lock->ml.convert_type == LKM_NLMODE)
				flags &= ~LKM_VALBLK;
			else {
				flags |= LKM_GET_LVB;
				lock->lksb->flags |= DLM_LKSB_GET_LVB;
			}
		}
	}
	FUNC11(&res->spinlock);

	/* no locks held here.
	 * need to wait for a reply as to whether it got queued or not. */
	status = FUNC7(dlm, res, lock, flags, type);

	FUNC10(&res->spinlock);
	res->state &= ~DLM_LOCK_RES_IN_PROGRESS;
	/* if it failed, move it back to granted queue.
	 * if master returns DLM_NORMAL and then down before sending ast,
	 * it may have already been moved to granted queue, reset to
	 * DLM_RECOVERING and retry convert */
	if (status != DLM_NORMAL) {
		if (status != DLM_NOTQUEUED)
			FUNC3(status);
		FUNC6(res, lock);
	} else if (!lock->convert_pending) {
		FUNC9(0, "%s: res %.*s, owner died and lock has been moved back "
				"to granted list, retry convert.\n",
				dlm->name, res->lockname.len, res->lockname.name);
		status = DLM_RECOVERING;
	}

	lock->convert_pending = 0;
bail:
	FUNC11(&res->spinlock);

	/* TODO: should this be a wake_one? */
	/* wake up any IN_PROGRESS waiters */
	FUNC12(&res->wq);

	return status;
}