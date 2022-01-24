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
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dlm_lock_resource {TYPE_2__ lockname; } ;
struct TYPE_3__ {scalar_t__ node; int /*<<< orphan*/  cookie; } ;
struct dlm_lock {int /*<<< orphan*/  astdata; TYPE_1__ ml; int /*<<< orphan*/  (* ast ) (int /*<<< orphan*/ ) ;} ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  (* dlm_astlockfunc_t ) (int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
		      struct dlm_lock *lock)
{
	dlm_astlockfunc_t *fn;

	FUNC5(0, "%s: res %.*s, lock %u:%llu, Local AST\n", dlm->name,
	     res->lockname.len, res->lockname.name,
	     FUNC2(FUNC1(lock->ml.cookie)),
	     FUNC3(FUNC1(lock->ml.cookie)));

	fn = &lock->ast;
	FUNC0(lock->ml.node != dlm->node_num);

	FUNC4(dlm, res, lock);
	(*fn)(lock->astdata);
}