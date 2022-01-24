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
struct ocfs2_super {int /*<<< orphan*/ * dc_task; struct ocfs2_cluster_connection* cconn; TYPE_1__ osb_orphan_scan; int /*<<< orphan*/  osb_nfs_sync_lockres; int /*<<< orphan*/  osb_rename_lockres; int /*<<< orphan*/  osb_super_lockres; scalar_t__ node_num; int /*<<< orphan*/  uuid_str; int /*<<< orphan*/  osb_cluster_name; int /*<<< orphan*/  osb_cluster_stack; } ;
struct ocfs2_cluster_connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct ocfs2_super*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lproto ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_super*,struct ocfs2_cluster_connection**) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_cluster_connection*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ocfs2_cluster_connection*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  ocfs2_do_node_down ; 
 int /*<<< orphan*/  ocfs2_downconvert_thread ; 
 scalar_t__ FUNC11 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct ocfs2_super *osb)
{
	int status = 0;
	struct ocfs2_cluster_connection *conn = NULL;

	if (FUNC11(osb)) {
		osb->node_num = 0;
		goto local;
	}

	FUNC9(osb);

	/* launch downconvert thread */
	osb->dc_task = FUNC2(ocfs2_downconvert_thread, osb, "ocfs2dc-%s",
			osb->uuid_str);
	if (FUNC0(osb->dc_task)) {
		status = FUNC1(osb->dc_task);
		osb->dc_task = NULL;
		FUNC5(status);
		goto bail;
	}

	/* for now, uuid == domain */
	status = FUNC6(osb->osb_cluster_stack,
				       osb->osb_cluster_name,
				       FUNC16(osb->osb_cluster_name),
				       osb->uuid_str,
				       FUNC16(osb->uuid_str),
				       &lproto, ocfs2_do_node_down, osb,
				       &conn);
	if (status) {
		FUNC5(status);
		goto bail;
	}

	status = FUNC8(conn, &osb->node_num);
	if (status < 0) {
		FUNC5(status);
		FUNC4(ML_ERROR,
		     "could not find this host's node number\n");
		FUNC7(conn, 0);
		goto bail;
	}

local:
	FUNC15(&osb->osb_super_lockres, osb);
	FUNC14(&osb->osb_rename_lockres, osb);
	FUNC12(&osb->osb_nfs_sync_lockres, osb);
	FUNC13(&osb->osb_orphan_scan.os_lockres, osb);

	osb->cconn = conn;
bail:
	if (status < 0) {
		FUNC10(osb);
		if (osb->dc_task)
			FUNC3(osb->dc_task);
	}

	return status;
}