#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dlm_migratable_lockres {int /*<<< orphan*/  lvb; } ;
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  node; int /*<<< orphan*/  cookie; } ;
struct dlm_lock {TYPE_4__* lockres; TYPE_3__ ml; TYPE_1__* lksb; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_8__ {TYPE_2__ lockname; } ;
struct TYPE_5__ {int /*<<< orphan*/  lvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int DLM_BLOCKED_LIST ; 
 int /*<<< orphan*/  DLM_LVB_LEN ; 
 scalar_t__ LKM_EXMODE ; 
 scalar_t__ LKM_PRMODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct dlm_lock *lock,
					  struct dlm_migratable_lockres *mres,
					  int queue)
{
	if (!lock->lksb)
	       return;

	/* Ignore lvb in all locks in the blocked list */
	if (queue == DLM_BLOCKED_LIST)
		return;

	/* Only consider lvbs in locks with granted EX or PR lock levels */
	if (lock->ml.type != LKM_EXMODE && lock->ml.type != LKM_PRMODE)
		return;

	if (FUNC4(mres->lvb)) {
		FUNC7(mres->lvb, lock->lksb->lvb, DLM_LVB_LEN);
		return;
	}

	/* Ensure the lvb copied for migration matches in other valid locks */
	if (!FUNC6(mres->lvb, lock->lksb->lvb, DLM_LVB_LEN))
		return;

	FUNC8(ML_ERROR, "Mismatched lvb in lock cookie=%u:%llu, name=%.*s, "
	     "node=%u\n",
	     FUNC2(FUNC1(lock->ml.cookie)),
	     FUNC3(FUNC1(lock->ml.cookie)),
	     lock->lockres->lockname.len, lock->lockres->lockname.name,
	     lock->ml.node);
	FUNC5(lock->lockres);
	FUNC0();
}