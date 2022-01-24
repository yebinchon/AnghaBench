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
struct dlm_ctxt {scalar_t__ joining_node; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  dlm_state; int /*<<< orphan*/  dlm_join_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_CTXT_LEAVING ; 
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dlm_ctxt *dlm)
{
	/* Yikes, a double spinlock! I need domain_lock for the dlm
	 * state and the dlm spinlock for join state... Sorry! */
again:
	FUNC2(&dlm_domain_lock);
	FUNC2(&dlm->spinlock);

	if (dlm->joining_node != DLM_LOCK_RES_OWNER_UNKNOWN) {
		FUNC1(0, "Node %d is joining, we wait on it.\n",
			  dlm->joining_node);
		FUNC3(&dlm->spinlock);
		FUNC3(&dlm_domain_lock);

		FUNC4(dlm->dlm_join_events, FUNC0(dlm));
		goto again;
	}

	dlm->dlm_state = DLM_CTXT_LEAVING;
	FUNC3(&dlm->spinlock);
	FUNC3(&dlm_domain_lock);
}