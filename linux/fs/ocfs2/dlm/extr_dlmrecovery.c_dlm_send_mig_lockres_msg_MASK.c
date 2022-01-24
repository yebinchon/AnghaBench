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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct dlm_migratable_lockres {int flags; int master; scalar_t__ num_locks; int /*<<< orphan*/  lockname; int /*<<< orphan*/  lockname_len; int /*<<< orphan*/  total_locks; int /*<<< orphan*/  mig_cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  name; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DLM_MAX_MIGRATABLE_LOCKS ; 
 int /*<<< orphan*/  DLM_MIG_LOCKRES_MSG ; 
 int DLM_MRES_ALL_DONE ; 
 int DLM_MRES_MIGRATION ; 
 int EFAULT ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_migratable_lockres*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ml ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_migratable_lockres*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_migratable_lockres*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct dlm_ctxt *dlm,
				      struct dlm_migratable_lockres *mres,
				      u8 send_to,
				      struct dlm_lock_resource *res,
				      int total_locks)
{
	u64 mig_cookie = FUNC3(mres->mig_cookie);
	int mres_total_locks = FUNC2(mres->total_locks);
	int ret = 0, status = 0;
	u8 orig_flags = mres->flags,
	   orig_master = mres->master;

	FUNC1(mres->num_locks > DLM_MAX_MIGRATABLE_LOCKS);
	if (!mres->num_locks)
		return 0;

	/* add an all-done flag if we reached the last lock */
	orig_flags = mres->flags;
	FUNC1(total_locks > mres_total_locks);
	if (total_locks == mres_total_locks)
		mres->flags |= DLM_MRES_ALL_DONE;

	FUNC5(0, "%s:%.*s: sending mig lockres (%s) to %u\n",
	     dlm->name, res->lockname.len, res->lockname.name,
	     orig_flags & DLM_MRES_MIGRATION ? "migration" : "recovery",
	     send_to);

	/* send it */
	ret = FUNC7(DLM_MIG_LOCKRES_MSG, dlm->key, mres,
				 FUNC8(mres, ml, mres->num_locks),
				 send_to, &status);
	if (ret < 0) {
		/* XXX: negative status is not handled.
		 * this will end up killing this node. */
		FUNC5(ML_ERROR, "%s: res %.*s, Error %d send MIG_LOCKRES to "
		     "node %u (%s)\n", dlm->name, mres->lockname_len,
		     mres->lockname, ret, send_to,
		     (orig_flags & DLM_MRES_MIGRATION ?
		      "migration" : "recovery"));
	} else {
		/* might get an -ENOMEM back here */
		ret = status;
		if (ret < 0) {
			FUNC6(ret);

			if (ret == -EFAULT) {
				FUNC5(ML_ERROR, "node %u told me to kill "
				     "myself!\n", send_to);
				FUNC0();
			}
		}
	}

	/* zero and reinit the message buffer */
	FUNC4(mres, res->lockname.name,
				    res->lockname.len, mres_total_locks,
				    mig_cookie, orig_flags, orig_master);
	return ret;
}