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
struct node_info {int /*<<< orphan*/  version; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int /*<<< orphan*/  data_blkaddr; int /*<<< orphan*/  ofs_in_node; int /*<<< orphan*/  nid; int /*<<< orphan*/  inode; int /*<<< orphan*/  node_page; } ;
typedef  int /*<<< orphan*/  block_t ;
typedef  int blkcnt_t ;

/* Variables and functions */
 int EPERM ; 
 struct f2fs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FI_NO_ALLOC ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  NULL_ADDR ; 
 scalar_t__ NULL_SEGNO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct f2fs_summary*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct dnode_of_data*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_summary*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct dnode_of_data *dn, int seg_type)
{
	struct f2fs_sb_info *sbi = FUNC0(dn->inode);
	struct f2fs_summary sum;
	struct node_info ni;
	block_t old_blkaddr;
	blkcnt_t count = 1;
	int err;

	if (FUNC11(FUNC9(dn->inode, FI_NO_ALLOC)))
		return -EPERM;

	err = FUNC5(sbi, dn->nid, &ni);
	if (err)
		return err;

	dn->data_blkaddr = FUNC3(dn->inode,
				dn->node_page, dn->ofs_in_node);
	if (dn->data_blkaddr != NULL_ADDR)
		goto alloc;

	if (FUNC11((err = FUNC7(sbi, dn->inode, &count))))
		return err;

alloc:
	FUNC10(&sum, dn->nid, dn->ofs_in_node, ni.version);
	old_blkaddr = dn->data_blkaddr;
	FUNC4(sbi, NULL, old_blkaddr, &dn->data_blkaddr,
					&sum, seg_type, NULL, false);
	if (FUNC1(sbi, old_blkaddr) != NULL_SEGNO)
		FUNC8(FUNC2(sbi),
					old_blkaddr, old_blkaddr);
	FUNC6(dn, dn->data_blkaddr);

	/*
	 * i_size will be updated by direct_IO. Otherwise, we'll get stale
	 * data from unwritten block via dio_read.
	 */
	return 0;
}