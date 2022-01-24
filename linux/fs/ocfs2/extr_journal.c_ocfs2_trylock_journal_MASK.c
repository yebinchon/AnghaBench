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
struct ocfs2_super {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EAGAIN ; 
 int /*<<< orphan*/  JOURNAL_SYSTEM_INODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_META_LOCK_NOQUEUE ; 
 int OCFS2_META_LOCK_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct inode* FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 

__attribute__((used)) static int FUNC8(struct ocfs2_super *osb,
				 int slot_num)
{
	int status, flags;
	struct inode *inode = NULL;

	inode = FUNC5(osb, JOURNAL_SYSTEM_INODE,
					    slot_num);
	if (inode == NULL) {
		FUNC3(ML_ERROR, "access error\n");
		status = -EACCES;
		goto bail;
	}
	if (FUNC2(inode)) {
		FUNC3(ML_ERROR, "access error (bad inode)\n");
		FUNC1(inode);
		inode = NULL;
		status = -EACCES;
		goto bail;
	}
	FUNC0(inode);

	flags = OCFS2_META_LOCK_RECOVERY | OCFS2_META_LOCK_NOQUEUE;
	status = FUNC6(inode, NULL, 1, flags);
	if (status < 0) {
		if (status != -EAGAIN)
			FUNC4(status);
		goto bail;
	}

	FUNC7(inode, 1);
bail:
	FUNC1(inode);

	return status;
}