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
struct ocfs2_xattr_tree_list {char* buffer; size_t buffer_size; int result; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,struct ocfs2_xattr_tree_list*) ; 
 int /*<<< orphan*/  ocfs2_list_xattr_tree_rec ; 

__attribute__((used)) static int FUNC2(struct inode *inode,
					     struct buffer_head *blk_bh,
					     char *buffer,
					     size_t buffer_size)
{
	int ret;
	struct ocfs2_xattr_tree_list xl = {
		.buffer = buffer,
		.buffer_size = buffer_size,
		.result = 0,
	};

	ret = FUNC1(inode, blk_bh,
					      ocfs2_list_xattr_tree_rec, &xl);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	ret = xl.result;
out:
	return ret;
}