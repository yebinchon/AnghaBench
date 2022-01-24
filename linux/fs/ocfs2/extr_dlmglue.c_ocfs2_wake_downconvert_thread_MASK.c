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
struct ocfs2_super {int /*<<< orphan*/  dc_event; int /*<<< orphan*/  dc_task_lock; int /*<<< orphan*/  dc_wake_sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ocfs2_super *osb)
{
	unsigned long flags;

	FUNC0(&osb->dc_task_lock, flags);
	/* make sure the voting thread gets a swipe at whatever changes
	 * the caller may have made to the voting state */
	osb->dc_wake_sequence++;
	FUNC1(&osb->dc_task_lock, flags);
	FUNC2(&osb->dc_event);
}