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
typedef  int u8 ;
struct dlm_master_list_entry {scalar_t__ type; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  woken; int /*<<< orphan*/  maybe_map; } ;
struct dlm_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DLM_MLE_BLOCK ; 
 int /*<<< orphan*/  O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*,struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct dlm_ctxt *dlm,
				struct dlm_master_list_entry *mle, u8 dead_node)
{
	int bit;

	FUNC0(mle->type != DLM_MLE_BLOCK);

	FUNC6(&mle->spinlock);
	bit = FUNC4(mle->maybe_map, O2NM_MAX_NODES, 0);
	if (bit != dead_node) {
		FUNC5(0, "mle found, but dead node %u would not have been "
		     "master\n", dead_node);
		FUNC7(&mle->spinlock);
	} else {
		/* Must drop the refcount by one since the assert_master will
		 * never arrive. This may result in the mle being unlinked and
		 * freed, but there may still be a process waiting in the
		 * dlmlock path which is fine. */
		FUNC5(0, "node %u was expected master\n", dead_node);
		FUNC3(&mle->woken, 1);
		FUNC7(&mle->spinlock);
		FUNC8(&mle->wq);

		/* Do not need events any longer, so detach from heartbeat */
		FUNC1(dlm, mle);
		FUNC2(mle);
	}
}