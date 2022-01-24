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
struct TYPE_4__ {int /*<<< orphan*/  cookie; } ;
struct dlm_lock {int bast_pending; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  bast_list; TYPE_2__ ml; struct dlm_lock_resource* lockres; } ;
struct dlm_ctxt {int /*<<< orphan*/  pending_basts; int /*<<< orphan*/  name; int /*<<< orphan*/  ast_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
	struct dlm_lock_resource *res;

	FUNC0(!dlm);
	FUNC0(!lock);

	FUNC1(&dlm->ast_lock);

	res = lock->lockres;

	FUNC0(!FUNC7(&lock->bast_list));
	if (lock->bast_pending)
		FUNC8(0, "%s: res %.*s, lock %u:%llu, BAST getting flushed\n",
		     dlm->name, res->lockname.len, res->lockname.name,
		     FUNC3(FUNC2(lock->ml.cookie)),
		     FUNC4(FUNC2(lock->ml.cookie)));

	/* putting lock on list, add a ref */
	FUNC5(lock);
	FUNC9(&lock->spinlock);
	FUNC6(&lock->bast_list, &dlm->pending_basts);
	lock->bast_pending = 1;
	FUNC10(&lock->spinlock);
}