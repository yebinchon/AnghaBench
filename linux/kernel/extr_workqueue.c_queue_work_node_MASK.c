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
struct workqueue_struct {int flags; } ;
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WORK_STRUCT_PENDING_BIT ; 
 int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC1 (int,struct workqueue_struct*,struct work_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct work_struct*) ; 
 int FUNC6 (int) ; 

bool FUNC7(int node, struct workqueue_struct *wq,
		     struct work_struct *work)
{
	unsigned long flags;
	bool ret = false;

	/*
	 * This current implementation is specific to unbound workqueues.
	 * Specifically we only return the first available CPU for a given
	 * node instead of cycling through individual CPUs within the node.
	 *
	 * If this is used with a per-cpu workqueue then the logic in
	 * workqueue_select_cpu_near would need to be updated to allow for
	 * some round robin type logic.
	 */
	FUNC0(!(wq->flags & WQ_UNBOUND));

	FUNC3(flags);

	if (!FUNC4(WORK_STRUCT_PENDING_BIT, FUNC5(work))) {
		int cpu = FUNC6(node);

		FUNC1(cpu, wq, work);
		ret = true;
	}

	FUNC2(flags);
	return ret;
}