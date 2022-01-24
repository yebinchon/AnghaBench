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
struct ocfs2_super {int /*<<< orphan*/  osb_lock; int /*<<< orphan*/ * osb_orphan_wipes; int /*<<< orphan*/  osb_recovering_orphan_dirs; } ;

/* Variables and functions */
 int EDEADLK ; 
 scalar_t__ FUNC0 (struct ocfs2_super*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_super *osb,
					     int slot)
{
	int ret = 0;

	FUNC1(&osb->osb_lock);
	if (FUNC0(osb, &osb->osb_recovering_orphan_dirs, slot)) {
		ret = -EDEADLK;
		goto out;
	}
	/* This signals to the orphan recovery process that it should
	 * wait for us to handle the wipe. */
	osb->osb_orphan_wipes[slot]++;
out:
	FUNC2(&osb->osb_lock);
	FUNC3(slot, ret);
	return ret;
}