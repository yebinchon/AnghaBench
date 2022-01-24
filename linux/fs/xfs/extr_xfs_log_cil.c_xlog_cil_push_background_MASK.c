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
struct xlog {TYPE_1__* l_mp; struct xfs_cil* l_cilp; } ;
struct xfs_cil {scalar_t__ xc_push_seq; scalar_t__ xc_current_sequence; int /*<<< orphan*/  xc_push_lock; int /*<<< orphan*/  xc_push_work; TYPE_2__* xc_ctx; int /*<<< orphan*/  xc_cil; } ;
struct TYPE_4__ {scalar_t__ space_used; } ;
struct TYPE_3__ {int /*<<< orphan*/  m_cil_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct xlog*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(
	struct xlog	*log)
{
	struct xfs_cil	*cil = log->l_cilp;

	/*
	 * The cil won't be empty because we are called while holding the
	 * context lock so whatever we added to the CIL will still be there
	 */
	FUNC0(!FUNC2(&cil->xc_cil));

	/*
	 * don't do a background push if we haven't used up all the
	 * space available yet.
	 */
	if (cil->xc_ctx->space_used < FUNC1(log))
		return;

	FUNC4(&cil->xc_push_lock);
	if (cil->xc_push_seq < cil->xc_current_sequence) {
		cil->xc_push_seq = cil->xc_current_sequence;
		FUNC3(log->l_mp->m_cil_workqueue, &cil->xc_push_work);
	}
	FUNC5(&cil->xc_push_lock);

}