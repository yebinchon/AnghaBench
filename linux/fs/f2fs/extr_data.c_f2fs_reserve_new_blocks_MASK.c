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
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int node_changed; int /*<<< orphan*/  node_page; int /*<<< orphan*/  data_blkaddr; int /*<<< orphan*/  ofs_in_node; int /*<<< orphan*/  inode; int /*<<< orphan*/  nid; } ;
typedef  scalar_t__ block_t ;
typedef  int /*<<< orphan*/  blkcnt_t ;

/* Variables and functions */
 int EPERM ; 
 struct f2fs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FI_NO_ALLOC ; 
 int /*<<< orphan*/  NEW_ADDR ; 
 int /*<<< orphan*/  NODE ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct dnode_of_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct dnode_of_data *dn, blkcnt_t count)
{
	struct f2fs_sb_info *sbi = FUNC0(dn->inode);
	int err;

	if (!count)
		return 0;

	if (FUNC8(FUNC5(dn->inode, FI_NO_ALLOC)))
		return -EPERM;
	if (FUNC8((err = FUNC4(sbi, dn->inode, &count))))
		return err;

	FUNC7(dn->inode, dn->nid,
						dn->ofs_in_node, count);

	FUNC3(dn->node_page, NODE, true, true);

	for (; count > 0; dn->ofs_in_node++) {
		block_t blkaddr = FUNC2(dn->inode,
					dn->node_page, dn->ofs_in_node);
		if (blkaddr == NULL_ADDR) {
			dn->data_blkaddr = NEW_ADDR;
			FUNC1(dn);
			count--;
		}
	}

	if (FUNC6(dn->node_page))
		dn->node_changed = true;
	return 0;
}