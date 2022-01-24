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
struct ocfs2_super {int disable_recovery; struct ocfs2_recovery_map* recovery_map; scalar_t__ ocfs2_wq; int /*<<< orphan*/  recovery_event; int /*<<< orphan*/  recovery_lock; } ;
struct ocfs2_recovery_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_recovery_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct ocfs2_super *osb)
{
	struct ocfs2_recovery_map *rm;

	/* disable any new recovery threads and wait for any currently
	 * running ones to exit. Do this before setting the vol_state. */
	FUNC2(&osb->recovery_lock);
	osb->disable_recovery = 1;
	FUNC3(&osb->recovery_lock);
	FUNC5(osb->recovery_event, !FUNC4(osb));

	/* At this point, we know that no more recovery threads can be
	 * launched, so wait for any recovery completion work to
	 * complete. */
	if (osb->ocfs2_wq)
		FUNC0(osb->ocfs2_wq);

	/*
	 * Now that recovery is shut down, and the osb is about to be
	 * freed,  the osb_lock is not taken here.
	 */
	rm = osb->recovery_map;
	/* XXX: Should we bug if there are dirty entries? */

	FUNC1(rm);
}