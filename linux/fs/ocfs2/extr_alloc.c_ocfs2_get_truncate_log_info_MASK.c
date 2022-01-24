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
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  TRUNCATE_LOG_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct inode* FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct inode*,struct buffer_head**) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_super *osb,
				       int slot_num,
				       struct inode **tl_inode,
				       struct buffer_head **tl_bh)
{
	int status;
	struct inode *inode = NULL;
	struct buffer_head *bh = NULL;

	inode = FUNC3(osb,
					   TRUNCATE_LOG_SYSTEM_INODE,
					   slot_num);
	if (!inode) {
		status = -EINVAL;
		FUNC1(ML_ERROR, "Could not get load truncate log inode!\n");
		goto bail;
	}

	status = FUNC4(inode, &bh);
	if (status < 0) {
		FUNC0(inode);
		FUNC2(status);
		goto bail;
	}

	*tl_inode = inode;
	*tl_bh    = bh;
bail:
	return status;
}