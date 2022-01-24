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
struct TYPE_4__ {scalar_t__ node; int /*<<< orphan*/  cookie; } ;
struct dlm_lock {int /*<<< orphan*/  astdata; TYPE_2__ ml; int /*<<< orphan*/  (* bast ) (int /*<<< orphan*/ ,int) ;} ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  (* dlm_bastlockfunc_t ) (int /*<<< orphan*/ ,int) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
		       struct dlm_lock *lock, int blocked_type)
{
	dlm_bastlockfunc_t *fn = &lock->bast;

	FUNC0(lock->ml.node != dlm->node_num);

	FUNC4(0, "%s: res %.*s, lock %u:%llu, Local BAST, blocked %d\n",
	     dlm->name, res->lockname.len, res->lockname.name,
	     FUNC2(FUNC1(lock->ml.cookie)),
	     FUNC3(FUNC1(lock->ml.cookie)),
	     blocked_type);

	(*fn)(lock->astdata, blocked_type);
}