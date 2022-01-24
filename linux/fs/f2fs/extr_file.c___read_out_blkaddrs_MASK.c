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
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {scalar_t__ max_level; int ofs_in_node; int /*<<< orphan*/  node_page; int /*<<< orphan*/  inode; } ;
typedef  int pgoff_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int EFSCORRUPTED ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 struct f2fs_sb_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  LOOKUP_NODE_RA ; 
 int /*<<< orphan*/  NULL_ADDR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct dnode_of_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct dnode_of_data*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, block_t *blkaddr,
				int *do_replace, pgoff_t off, pgoff_t len)
{
	struct f2fs_sb_info *sbi = FUNC2(inode);
	struct dnode_of_data dn;
	int ret, done, i;

next_dnode:
	FUNC11(&dn, inode, NULL, NULL, 0);
	ret = FUNC5(&dn, off, LOOKUP_NODE_RA);
	if (ret && ret != -ENOENT) {
		return ret;
	} else if (ret == -ENOENT) {
		if (dn.max_level == 0)
			return -ENOENT;
		done = FUNC10((pgoff_t)FUNC0(inode) - dn.ofs_in_node,
									len);
		blkaddr += done;
		do_replace += done;
		goto next;
	}

	done = FUNC10((pgoff_t)FUNC1(dn.node_page, inode) -
							dn.ofs_in_node, len);
	for (i = 0; i < done; i++, blkaddr++, do_replace++, dn.ofs_in_node++) {
		*blkaddr = FUNC4(dn.inode,
					dn.node_page, dn.ofs_in_node);

		if (FUNC3(*blkaddr) &&
			!FUNC7(sbi, *blkaddr,
					DATA_GENERIC_ENHANCE)) {
			FUNC8(&dn);
			return -EFSCORRUPTED;
		}

		if (!FUNC6(sbi, *blkaddr)) {

			if (FUNC12(sbi, LFS)) {
				FUNC8(&dn);
				return -EOPNOTSUPP;
			}

			/* do not invalidate this block address */
			FUNC9(&dn, NULL_ADDR);
			*do_replace = 1;
		}
	}
	FUNC8(&dn);
next:
	len -= done;
	off += done;
	if (len)
		goto next_dnode;
	return 0;
}