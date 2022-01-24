#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dlm_lock_resource {int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  state; } ;
struct dlm_lock {int dummy; } ;
struct dlm_ctxt {int dummy; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_RES_IN_PROGRESS ; 
 int DLM_NORMAL ; 
 int DLM_NOTQUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int FUNC2 (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*,struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

enum dlm_status FUNC10(struct dlm_ctxt *dlm,
				  struct dlm_lock_resource *res,
				  struct dlm_lock *lock, int flags, int type)
{
	int call_ast = 0, kick_thread = 0;
	enum dlm_status status;

	FUNC7(&res->spinlock);
	/* we are not in a network handler, this is fine */
	FUNC1(res);
	FUNC0(res);
	res->state |= DLM_LOCK_RES_IN_PROGRESS;

	status = FUNC2(dlm, res, lock, flags, type,
				     &call_ast, &kick_thread);

	res->state &= ~DLM_LOCK_RES_IN_PROGRESS;
	FUNC8(&res->spinlock);
	FUNC9(&res->wq);
	if (status != DLM_NORMAL && status != DLM_NOTQUEUED)
		FUNC3(status);

	/* either queue the ast or release it */
	if (call_ast)
		FUNC6(dlm, lock);
	else
		FUNC5(dlm, res);

	if (kick_thread)
		FUNC4(dlm, res);

	return status;
}