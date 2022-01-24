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
typedef  scalar_t__ xfs_lsn_t ;
struct xlog {TYPE_1__* l_mp; struct xfs_cil* l_cilp; } ;
struct xfs_cil {scalar_t__ xc_current_sequence; scalar_t__ xc_push_seq; int /*<<< orphan*/  xc_push_lock; int /*<<< orphan*/  xc_push_work; int /*<<< orphan*/  xc_cil; } ;
struct TYPE_2__ {int /*<<< orphan*/  m_cil_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(
	struct xlog	*log,
	xfs_lsn_t	push_seq)
{
	struct xfs_cil	*cil = log->l_cilp;

	if (!cil)
		return;

	FUNC0(push_seq && push_seq <= cil->xc_current_sequence);

	/* start on any pending background push to minimise wait time on it */
	FUNC1(&cil->xc_push_work);

	/*
	 * If the CIL is empty or we've already pushed the sequence then
	 * there's no work we need to do.
	 */
	FUNC4(&cil->xc_push_lock);
	if (FUNC2(&cil->xc_cil) || push_seq <= cil->xc_push_seq) {
		FUNC5(&cil->xc_push_lock);
		return;
	}

	cil->xc_push_seq = push_seq;
	FUNC3(log->l_mp->m_cil_workqueue, &cil->xc_push_work);
	FUNC5(&cil->xc_push_lock);
}