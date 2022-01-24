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
struct ocfs2_super {int /*<<< orphan*/  slot_num; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int NUM_SYSTEM_INODES ; 
 int OCFS2_LAST_GLOBAL_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct inode* FUNC3 (struct ocfs2_super*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_super *osb)
{
	struct inode *new = NULL;
	int status = 0;
	int i;

	for (i = OCFS2_LAST_GLOBAL_SYSTEM_INODE + 1;
	     i < NUM_SYSTEM_INODES;
	     i++) {
		if (!FUNC5(osb, i))
			continue;
		new = FUNC3(osb, i, osb->slot_num);
		if (!new) {
			FUNC6(osb);
			status = FUNC4(osb) ? -EROFS : -EINVAL;
			FUNC1(ML_ERROR, "status=%d, sysfile=%d, slot=%d\n",
			     status, i, osb->slot_num);
			goto bail;
		}
		/* the array now has one ref, so drop this one */
		FUNC0(new);
	}

bail:
	if (status)
		FUNC2(status);
	return status;
}