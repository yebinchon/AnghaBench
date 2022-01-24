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
struct ocfs2_trim_fs_lvb {scalar_t__ lvb_version; int /*<<< orphan*/  lvb_trimlen; int /*<<< orphan*/  lvb_minlen; int /*<<< orphan*/  lvb_len; int /*<<< orphan*/  lvb_start; int /*<<< orphan*/  lvb_nodenum; int /*<<< orphan*/  lvb_success; } ;
struct ocfs2_trim_fs_info {int tf_valid; void* tf_trimlen; void* tf_minlen; void* tf_len; void* tf_start; int /*<<< orphan*/  tf_nodenum; int /*<<< orphan*/  tf_success; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_lksb; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_trim_fs_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_NOQUEUE ; 
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int EAGAIN ; 
 int EROFS ; 
 scalar_t__ OCFS2_TRIMFS_LVB_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ocfs2_trim_fs_lvb* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ocfs2_super*) ; 
 scalar_t__ FUNC7 (struct ocfs2_super*) ; 

int FUNC8(struct ocfs2_super *osb,
		       struct ocfs2_trim_fs_info *info, int trylock)
{
	int status;
	struct ocfs2_trim_fs_lvb *lvb;
	struct ocfs2_lock_res *lockres = &osb->osb_trim_fs_lockres;

	if (info)
		info->tf_valid = 0;

	if (FUNC6(osb))
		return -EROFS;

	if (FUNC7(osb))
		return 0;

	status = FUNC3(osb, lockres, DLM_LOCK_EX,
				    trylock ? DLM_LKF_NOQUEUE : 0, 0);
	if (status < 0) {
		if (status != -EAGAIN)
			FUNC2(status);
		return status;
	}

	if (info) {
		lvb = FUNC4(&lockres->l_lksb);
		if (FUNC5(&lockres->l_lksb) &&
		    lvb->lvb_version == OCFS2_TRIMFS_LVB_VERSION) {
			info->tf_valid = 1;
			info->tf_success = lvb->lvb_success;
			info->tf_nodenum = FUNC0(lvb->lvb_nodenum);
			info->tf_start = FUNC1(lvb->lvb_start);
			info->tf_len = FUNC1(lvb->lvb_len);
			info->tf_minlen = FUNC1(lvb->lvb_minlen);
			info->tf_trimlen = FUNC1(lvb->lvb_trimlen);
		}
	}

	return status;
}