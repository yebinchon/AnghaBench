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
struct f2fs_node {int dummy; } ;
struct dnode_of_data {int ofs_in_node; int /*<<< orphan*/  nid; int /*<<< orphan*/  inode; int /*<<< orphan*/  node_page; scalar_t__ data_blkaddr; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ block_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 struct f2fs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct f2fs_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FI_FIRST_BLOCK_WRITTEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  REQ_TIME ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (struct f2fs_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dnode_of_data*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC18(struct dnode_of_data *dn, int count)
{
	struct f2fs_sb_info *sbi = FUNC0(dn->inode);
	struct f2fs_node *raw_node;
	int nr_free = 0, ofs = dn->ofs_in_node, len = count;
	__le32 *addr;
	int base = 0;

	if (FUNC2(dn->node_page) && FUNC7(dn->inode))
		base = FUNC14(dn->inode);

	raw_node = FUNC1(dn->node_page);
	addr = FUNC4(raw_node) + base + ofs;

	for (; count > 0; count--, addr++, dn->ofs_in_node++) {
		block_t blkaddr = FUNC15(*addr);

		if (blkaddr == NULL_ADDR)
			continue;

		dn->data_blkaddr = NULL_ADDR;
		FUNC10(dn);

		if (FUNC3(blkaddr) &&
			!FUNC9(sbi, blkaddr,
					DATA_GENERIC_ENHANCE))
			continue;

		FUNC8(sbi, blkaddr);
		if (dn->ofs_in_node == 0 && FUNC2(dn->node_page))
			FUNC5(dn->inode, FI_FIRST_BLOCK_WRITTEN);
		nr_free++;
	}

	if (nr_free) {
		pgoff_t fofs;
		/*
		 * once we invalidate valid blkaddr in range [ofs, ofs + count],
		 * we will invalidate all blkaddr in the whole range.
		 */
		fofs = FUNC11(FUNC16(dn->node_page),
							dn->inode) + ofs;
		FUNC12(dn, fofs, 0, len);
		FUNC6(sbi, dn->inode, nr_free);
	}
	dn->ofs_in_node = ofs;

	FUNC13(sbi, REQ_TIME);
	FUNC17(dn->inode, dn->nid,
					 dn->ofs_in_node, nr_free);
}