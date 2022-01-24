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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_lksb; } ;
struct TYPE_2__ {struct ocfs2_lock_res os_lockres; } ;
struct ocfs2_super {TYPE_1__ osb_orphan_scan; } ;
struct ocfs2_orphan_scan_lvb {int /*<<< orphan*/  lvb_os_seqno; int /*<<< orphan*/  lvb_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int /*<<< orphan*/  OCFS2_ORPHAN_LVB_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 struct ocfs2_orphan_scan_lvb* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*) ; 

void FUNC5(struct ocfs2_super *osb, u32 seqno)
{
	struct ocfs2_lock_res *lockres;
	struct ocfs2_orphan_scan_lvb *lvb;

	if (!FUNC3(osb) && !FUNC4(osb)) {
		lockres = &osb->osb_orphan_scan.os_lockres;
		lvb = FUNC2(&lockres->l_lksb);
		lvb->lvb_version = OCFS2_ORPHAN_LVB_VERSION;
		lvb->lvb_os_seqno = FUNC0(seqno);
		FUNC1(osb, lockres, DLM_LOCK_EX);
	}
}