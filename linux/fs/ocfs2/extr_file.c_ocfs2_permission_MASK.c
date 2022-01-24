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
struct ocfs2_lock_holder {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int MAY_NOT_BLOCK ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_lock_holder*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_lock_holder*,int) ; 

int FUNC5(struct inode *inode, int mask)
{
	int ret, had_lock;
	struct ocfs2_lock_holder oh;

	if (mask & MAY_NOT_BLOCK)
		return -ECHILD;

	had_lock = FUNC3(inode, NULL, 0, &oh);
	if (had_lock < 0) {
		ret = had_lock;
		goto out;
	} else if (had_lock) {
		/* See comments in ocfs2_setattr() for details.
		 * The call chain of this case could be:
		 * do_sys_open()
		 *  may_open()
		 *   inode_permission()
		 *    ocfs2_permission()
		 *     ocfs2_iop_get_acl()
		 */
		FUNC2(ML_ERROR, "Another case of recursive locking:\n");
		FUNC0();
	}

	ret = FUNC1(inode, mask);

	FUNC4(inode, 0, &oh, had_lock);
out:
	return ret;
}