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
struct dnode_of_data {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LOOKUP_NODE_RA ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,struct inode*,int) ; 
 int FUNC2 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct dnode_of_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, block_t *blkaddr,
				int *do_replace, pgoff_t off, int len)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct dnode_of_data dn;
	int ret, i;

	for (i = 0; i < len; i++, do_replace++, blkaddr++) {
		if (*do_replace == 0)
			continue;

		FUNC6(&dn, inode, NULL, NULL, 0);
		ret = FUNC2(&dn, off + i, LOOKUP_NODE_RA);
		if (ret) {
			FUNC1(sbi, inode, 1);
			FUNC3(sbi, *blkaddr);
		} else {
			FUNC5(&dn, *blkaddr);
		}
		FUNC4(&dn);
	}
	return 0;
}