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
struct ocfs2_super {int /*<<< orphan*/  osb_lock; int /*<<< orphan*/  osb_wipe_event; scalar_t__* osb_orphan_wipes; int /*<<< orphan*/  osb_recovering_orphan_dirs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_super*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ocfs2_super *osb,
					     int slot)
{
	FUNC2(&osb->osb_lock);
	/* Mark ourselves such that new processes in delete_inode()
	 * know to quit early. */
	FUNC0(osb, &osb->osb_recovering_orphan_dirs, slot);
	while (osb->osb_orphan_wipes[slot]) {
		/* If any processes are already in the middle of an
		 * orphan wipe on this dir, then we need to wait for
		 * them. */
		FUNC3(&osb->osb_lock);
		FUNC4(osb->osb_wipe_event,
					 FUNC1(osb, slot));
		FUNC2(&osb->osb_lock);
	}
	FUNC3(&osb->osb_lock);
}