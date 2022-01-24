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
struct dlm_master_list_entry {int /*<<< orphan*/  mle_refs; struct dlm_ctxt* dlm; } ;
struct dlm_ctxt {int /*<<< orphan*/  master_lock; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dlm_mle_release ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct dlm_master_list_entry*) ; 

__attribute__((used)) static void FUNC6(struct dlm_master_list_entry *mle)
{
	struct dlm_ctxt *dlm;
	dlm = mle->dlm;

	FUNC1(&dlm->spinlock);
	FUNC1(&dlm->master_lock);
	if (!FUNC4(&mle->mle_refs)) {
		/* this may or may not crash, but who cares.
		 * it's a BUG. */
		FUNC5(ML_ERROR, "bad mle: %p\n", mle);
		FUNC2(mle);
		FUNC0();
	} else
		FUNC3(&mle->mle_refs, dlm_mle_release);
}