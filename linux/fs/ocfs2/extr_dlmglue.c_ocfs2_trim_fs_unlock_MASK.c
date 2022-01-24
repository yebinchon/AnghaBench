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
struct ocfs2_trim_fs_lvb {void* lvb_trimlen; void* lvb_minlen; void* lvb_len; void* lvb_start; int /*<<< orphan*/  lvb_nodenum; int /*<<< orphan*/  lvb_success; int /*<<< orphan*/  lvb_version; } ;
struct ocfs2_trim_fs_info {int /*<<< orphan*/  tf_trimlen; int /*<<< orphan*/  tf_minlen; int /*<<< orphan*/  tf_len; int /*<<< orphan*/  tf_start; int /*<<< orphan*/  tf_nodenum; int /*<<< orphan*/  tf_success; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_lksb; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_trim_fs_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int /*<<< orphan*/  OCFS2_TRIMFS_LVB_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 struct ocfs2_trim_fs_lvb* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*) ; 

void FUNC5(struct ocfs2_super *osb,
			  struct ocfs2_trim_fs_info *info)
{
	struct ocfs2_trim_fs_lvb *lvb;
	struct ocfs2_lock_res *lockres = &osb->osb_trim_fs_lockres;

	if (FUNC4(osb))
		return;

	if (info) {
		lvb = FUNC3(&lockres->l_lksb);
		lvb->lvb_version = OCFS2_TRIMFS_LVB_VERSION;
		lvb->lvb_success = info->tf_success;
		lvb->lvb_nodenum = FUNC0(info->tf_nodenum);
		lvb->lvb_start = FUNC1(info->tf_start);
		lvb->lvb_len = FUNC1(info->tf_len);
		lvb->lvb_minlen = FUNC1(info->tf_minlen);
		lvb->lvb_trimlen = FUNC1(info->tf_trimlen);
	}

	FUNC2(osb, lockres, DLM_LOCK_EX);
}