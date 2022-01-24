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
struct work_struct {int dummy; } ;
struct vmpressure {unsigned long tree_scanned; unsigned long tree_reclaimed; int /*<<< orphan*/  sr_lock; } ;
typedef  enum vmpressure_levels { ____Placeholder_vmpressure_levels } vmpressure_levels ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (struct vmpressure*,int,int,int) ; 
 struct vmpressure* FUNC4 (struct vmpressure*) ; 
 struct vmpressure* FUNC5 (struct work_struct*) ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	struct vmpressure *vmpr = FUNC5(work);
	unsigned long scanned;
	unsigned long reclaimed;
	enum vmpressure_levels level;
	bool ancestor = false;
	bool signalled = false;

	FUNC0(&vmpr->sr_lock);
	/*
	 * Several contexts might be calling vmpressure(), so it is
	 * possible that the work was rescheduled again before the old
	 * work context cleared the counters. In that case we will run
	 * just after the old work returns, but then scanned might be zero
	 * here. No need for any locks here since we don't care if
	 * vmpr->reclaimed is in sync.
	 */
	scanned = vmpr->tree_scanned;
	if (!scanned) {
		FUNC1(&vmpr->sr_lock);
		return;
	}

	reclaimed = vmpr->tree_reclaimed;
	vmpr->tree_scanned = 0;
	vmpr->tree_reclaimed = 0;
	FUNC1(&vmpr->sr_lock);

	level = FUNC2(scanned, reclaimed);

	do {
		if (FUNC3(vmpr, level, ancestor, signalled))
			signalled = true;
		ancestor = true;
	} while ((vmpr = FUNC4(vmpr)));
}