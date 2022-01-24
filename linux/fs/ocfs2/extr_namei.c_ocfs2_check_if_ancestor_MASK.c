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
typedef  scalar_t__ u64 ;
struct ocfs2_super {TYPE_1__* root_inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_ino; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MAX_LOOKUP_TIMES ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct inode* FUNC5 (struct ocfs2_super*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,char*,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_super *osb,
		u64 src_inode_no, u64 dest_inode_no)
{
	int ret = 0, i = 0;
	u64 parent_inode_no = 0;
	u64 child_inode_no = src_inode_no;
	struct inode *child_inode;

#define MAX_LOOKUP_TIMES 32
	while (1) {
		child_inode = FUNC5(osb, child_inode_no, 0, 0);
		if (FUNC0(child_inode)) {
			ret = FUNC1(child_inode);
			break;
		}

		ret = FUNC6(child_inode, NULL, 0);
		if (ret < 0) {
			FUNC2(child_inode);
			if (ret != -ENOENT)
				FUNC4(ret);
			break;
		}

		ret = FUNC8(child_inode, "..", 2,
				&parent_inode_no);
		FUNC7(child_inode, 0);
		FUNC2(child_inode);
		if (ret < 0) {
			ret = -ENOENT;
			break;
		}

		if (parent_inode_no == dest_inode_no) {
			ret = 1;
			break;
		}

		if (parent_inode_no == osb->root_inode->i_ino) {
			ret = 0;
			break;
		}

		child_inode_no = parent_inode_no;

		if (++i >= MAX_LOOKUP_TIMES) {
			FUNC3(ML_NOTICE, "max lookup times reached, filesystem "
					"may have nested directories, "
					"src inode: %llu, dest inode: %llu.\n",
					(unsigned long long)src_inode_no,
					(unsigned long long)dest_inode_no);
			ret = 0;
			break;
		}
	}

	return ret;
}