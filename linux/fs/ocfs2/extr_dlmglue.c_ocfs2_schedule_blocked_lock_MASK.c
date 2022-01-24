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
struct ocfs2_super {int /*<<< orphan*/  dc_task_lock; int /*<<< orphan*/  blocked_lock_count; int /*<<< orphan*/  blocked_lock_list; } ;
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_blocked_list; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_BASTS ; 
 int OCFS2_LOCK_FREEING ; 
 int /*<<< orphan*/  OCFS2_LOCK_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ocfs2_super *osb,
					struct ocfs2_lock_res *lockres)
{
	unsigned long flags;

	FUNC0(&lockres->l_lock);

	if (lockres->l_flags & OCFS2_LOCK_FREEING) {
		/* Do not schedule a lock for downconvert when it's on
		 * the way to destruction - any nodes wanting access
		 * to the resource will get it soon. */
		FUNC4(ML_BASTS, "lockres %s won't be scheduled: flags 0x%lx\n",
		     lockres->l_name, lockres->l_flags);
		return;
	}

	FUNC3(lockres, OCFS2_LOCK_QUEUED);

	FUNC5(&osb->dc_task_lock, flags);
	if (FUNC2(&lockres->l_blocked_list)) {
		FUNC1(&lockres->l_blocked_list,
			      &osb->blocked_lock_list);
		osb->blocked_lock_count++;
	}
	FUNC6(&osb->dc_task_lock, flags);
}