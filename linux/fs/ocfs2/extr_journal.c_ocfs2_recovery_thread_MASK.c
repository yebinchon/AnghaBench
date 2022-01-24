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
struct ocfs2_super {int /*<<< orphan*/  recovery_event; int /*<<< orphan*/  recovery_lock; int /*<<< orphan*/ * recovery_thread_task; int /*<<< orphan*/  uuid_str; scalar_t__ disable_recovery; int /*<<< orphan*/  node_num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __ocfs2_recovery_thread ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct ocfs2_super*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct ocfs2_super *osb, int node_num)
{
	FUNC4(&osb->recovery_lock);

	FUNC7(node_num, osb->node_num,
		osb->disable_recovery, osb->recovery_thread_task,
		osb->disable_recovery ?
		-1 : FUNC6(osb, node_num));

	if (osb->disable_recovery)
		goto out;

	if (osb->recovery_thread_task)
		goto out;

	osb->recovery_thread_task =  FUNC2(__ocfs2_recovery_thread, osb,
			"ocfs2rec-%s", osb->uuid_str);
	if (FUNC0(osb->recovery_thread_task)) {
		FUNC3((int)FUNC1(osb->recovery_thread_task));
		osb->recovery_thread_task = NULL;
	}

out:
	FUNC5(&osb->recovery_lock);
	FUNC8(&osb->recovery_event);
}