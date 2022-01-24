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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct TYPE_4__ {int /*<<< orphan*/  highest_blocked; int /*<<< orphan*/  cookie; int /*<<< orphan*/  type; } ;
struct dlm_lock {int ast_pending; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  ast_list; TYPE_2__ ml; int /*<<< orphan*/  bast_list; scalar_t__ bast_pending; struct dlm_lock_resource* lockres; } ;
struct dlm_ctxt {int /*<<< orphan*/  pending_asts; int /*<<< orphan*/  name; int /*<<< orphan*/  ast_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LKM_IVMODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 scalar_t__ FUNC9 (struct dlm_ctxt*,struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
	struct dlm_lock_resource *res;

	FUNC1(!dlm);
	FUNC1(!lock);

	res = lock->lockres;

	FUNC2(&dlm->ast_lock);

	if (!FUNC12(&lock->ast_list)) {
		FUNC13(ML_ERROR, "%s: res %.*s, lock %u:%llu, "
		     "AST list not empty, pending %d, newlevel %d\n",
		     dlm->name, res->lockname.len, res->lockname.name,
		     FUNC4(FUNC3(lock->ml.cookie)),
		     FUNC5(FUNC3(lock->ml.cookie)),
		     lock->ast_pending, lock->ml.type);
		FUNC0();
	}
	if (lock->ast_pending)
		FUNC13(0, "%s: res %.*s, lock %u:%llu, AST getting flushed\n",
		     dlm->name, res->lockname.len, res->lockname.name,
		     FUNC4(FUNC3(lock->ml.cookie)),
		     FUNC5(FUNC3(lock->ml.cookie)));

	/* putting lock on list, add a ref */
	FUNC6(lock);
	FUNC14(&lock->spinlock);

	/* check to see if this ast obsoletes the bast */
	if (FUNC9(dlm, lock)) {
		FUNC13(0, "%s: res %.*s, lock %u:%llu, Cancelling BAST\n",
		     dlm->name, res->lockname.len, res->lockname.name,
		     FUNC4(FUNC3(lock->ml.cookie)),
		     FUNC5(FUNC3(lock->ml.cookie)));
		lock->bast_pending = 0;
		FUNC11(&lock->bast_list);
		lock->ml.highest_blocked = LKM_IVMODE;
		/* removing lock from list, remove a ref.  guaranteed
		 * this won't be the last ref because of the get above,
		 * so res->spinlock will not be taken here */
		FUNC7(lock);
		/* free up the reserved bast that we are cancelling.
		 * guaranteed that this will not be the last reserved
		 * ast because *both* an ast and a bast were reserved
		 * to get to this point.  the res->spinlock will not be
		 * taken here */
		FUNC8(dlm, res);
	}
	FUNC10(&lock->ast_list, &dlm->pending_asts);
	lock->ast_pending = 1;
	FUNC15(&lock->spinlock);
}