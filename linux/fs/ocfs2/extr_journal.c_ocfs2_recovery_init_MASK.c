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
struct ocfs2_super {int max_slots; struct ocfs2_recovery_map* recovery_map; int /*<<< orphan*/  recovery_event; int /*<<< orphan*/ * recovery_thread_task; scalar_t__ disable_recovery; int /*<<< orphan*/  recovery_lock; } ;
struct ocfs2_recovery_map {unsigned int* rm_entries; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_recovery_map* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ocfs2_super *osb)
{
	struct ocfs2_recovery_map *rm;

	FUNC3(&osb->recovery_lock);
	osb->disable_recovery = 0;
	osb->recovery_thread_task = NULL;
	FUNC0(&osb->recovery_event);

	rm = FUNC1(sizeof(struct ocfs2_recovery_map) +
		     osb->max_slots * sizeof(unsigned int),
		     GFP_KERNEL);
	if (!rm) {
		FUNC2(-ENOMEM);
		return -ENOMEM;
	}

	rm->rm_entries = (unsigned int *)((char *)rm +
					  sizeof(struct ocfs2_recovery_map));
	osb->recovery_map = rm;

	return 0;
}