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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,char*,struct ocfs2_dir_lookup_result*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 int FUNC6 (struct ocfs2_super*,struct inode**,struct buffer_head**) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_super *osb,
				    struct inode **ret_orphan_dir,
				    u64 blkno,
				    char *name,
				    struct ocfs2_dir_lookup_result *lookup,
				    bool dio)
{
	struct inode *orphan_dir_inode = NULL;
	struct buffer_head *orphan_dir_bh = NULL;
	int ret = 0;

	ret = FUNC6(osb, &orphan_dir_inode,
					   &orphan_dir_bh);
	if (ret < 0) {
		FUNC4(ret);
		return ret;
	}

	ret = FUNC0(orphan_dir_inode, orphan_dir_bh,
					 blkno, name, lookup, dio);
	if (ret < 0) {
		FUNC4(ret);
		goto out;
	}

	*ret_orphan_dir = orphan_dir_inode;

out:
	FUNC1(orphan_dir_bh);

	if (ret) {
		FUNC5(orphan_dir_inode, 1);
		FUNC2(orphan_dir_inode);
		FUNC3(orphan_dir_inode);
	}

	if (ret)
		FUNC4(ret);
	return ret;
}