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
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ORPHAN_DIR_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct inode* FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct buffer_head**,int) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_super *osb,
					struct inode **ret_orphan_dir,
					struct buffer_head **ret_orphan_dir_bh)
{
	struct inode *orphan_dir_inode;
	struct buffer_head *orphan_dir_bh = NULL;
	int ret = 0;

	orphan_dir_inode = FUNC4(osb,
						       ORPHAN_DIR_SYSTEM_INODE,
						       osb->slot_num);
	if (!orphan_dir_inode) {
		ret = -ENOENT;
		FUNC3(ret);
		return ret;
	}

	FUNC0(orphan_dir_inode);

	ret = FUNC5(orphan_dir_inode, &orphan_dir_bh, 1);
	if (ret < 0) {
		FUNC1(orphan_dir_inode);
		FUNC2(orphan_dir_inode);

		FUNC3(ret);
		return ret;
	}

	*ret_orphan_dir = orphan_dir_inode;
	*ret_orphan_dir_bh = orphan_dir_bh;

	return 0;
}