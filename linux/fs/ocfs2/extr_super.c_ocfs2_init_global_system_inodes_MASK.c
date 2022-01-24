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
struct ocfs2_super {int /*<<< orphan*/  slot_num; struct inode* sys_root_inode; int /*<<< orphan*/  system_dir_blkno; struct inode* root_inode; int /*<<< orphan*/  root_blkno; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_FIRST_ONLINE_SYSTEM_INODE ; 
 int /*<<< orphan*/  OCFS2_FI_FLAG_SYSFILE ; 
 int OCFS2_LAST_GLOBAL_SYSTEM_INODE ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct inode* FUNC5 (struct ocfs2_super*,int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC10(struct ocfs2_super *osb)
{
	struct inode *new = NULL;
	int status = 0;
	int i;

	new = FUNC6(osb, osb->root_blkno, OCFS2_FI_FLAG_SYSFILE, 0);
	if (FUNC0(new)) {
		status = FUNC1(new);
		FUNC4(status);
		goto bail;
	}
	osb->root_inode = new;

	new = FUNC6(osb, osb->system_dir_blkno, OCFS2_FI_FLAG_SYSFILE, 0);
	if (FUNC0(new)) {
		status = FUNC1(new);
		FUNC4(status);
		goto bail;
	}
	osb->sys_root_inode = new;

	for (i = OCFS2_FIRST_ONLINE_SYSTEM_INODE;
	     i <= OCFS2_LAST_GLOBAL_SYSTEM_INODE; i++) {
		if (!FUNC8(osb, i))
			continue;
		new = FUNC5(osb, i, osb->slot_num);
		if (!new) {
			FUNC9(osb);
			status = FUNC7(osb) ? -EROFS : -EINVAL;
			FUNC4(status);
			FUNC3(ML_ERROR, "Unable to load system inode %d, "
			     "possibly corrupt fs?", i);
			goto bail;
		}
		// the array now has one ref, so drop this one
		FUNC2(new);
	}

bail:
	if (status)
		FUNC4(status);
	return status;
}