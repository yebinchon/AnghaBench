#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  os_lockres; } ;
struct ocfs2_super {int /*<<< orphan*/ * cconn; TYPE_1__ osb_orphan_scan; int /*<<< orphan*/  osb_nfs_sync_lockres; int /*<<< orphan*/  osb_rename_lockres; int /*<<< orphan*/  osb_super_lockres; int /*<<< orphan*/ * dc_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ocfs2_super *osb,
			int hangup_pending)
{
	FUNC3(osb);

	/*
	 * Now that we have dropped all locks and ocfs2_dismount_volume()
	 * has disabled recovery, the DLM won't be talking to us.  It's
	 * safe to tear things down before disconnecting the cluster.
	 */

	if (osb->dc_task) {
		FUNC0(osb->dc_task);
		osb->dc_task = NULL;
	}

	FUNC4(&osb->osb_super_lockres);
	FUNC4(&osb->osb_rename_lockres);
	FUNC4(&osb->osb_nfs_sync_lockres);
	FUNC4(&osb->osb_orphan_scan.os_lockres);

	FUNC1(osb->cconn, hangup_pending);
	osb->cconn = NULL;

	FUNC2(osb);
}