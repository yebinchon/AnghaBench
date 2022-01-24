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
typedef  scalar_t__ u32 ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_lksb; } ;
struct TYPE_2__ {scalar_t__ os_seqno; struct ocfs2_lock_res os_lockres; } ;
struct ocfs2_super {TYPE_1__ osb_orphan_scan; } ;
struct ocfs2_orphan_scan_lvb {scalar_t__ lvb_version; int /*<<< orphan*/  lvb_os_seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int EROFS ; 
 scalar_t__ OCFS2_ORPHAN_LVB_VERSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ocfs2_orphan_scan_lvb* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*) ; 

int FUNC6(struct ocfs2_super *osb, u32 *seqno)
{
	struct ocfs2_lock_res *lockres;
	struct ocfs2_orphan_scan_lvb *lvb;
	int status = 0;

	if (FUNC4(osb))
		return -EROFS;

	if (FUNC5(osb))
		return 0;

	lockres = &osb->osb_orphan_scan.os_lockres;
	status = FUNC1(osb, lockres, DLM_LOCK_EX, 0, 0);
	if (status < 0)
		return status;

	lvb = FUNC2(&lockres->l_lksb);
	if (FUNC3(&lockres->l_lksb) &&
	    lvb->lvb_version == OCFS2_ORPHAN_LVB_VERSION)
		*seqno = FUNC0(lvb->lvb_os_seqno);
	else
		*seqno = osb->osb_orphan_scan.os_seqno + 1;

	return status;
}