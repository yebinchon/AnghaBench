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
struct seg_entry {int /*<<< orphan*/  cur_valid_map; } ;
struct page {scalar_t__ i_ino; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_summary_block {struct f2fs_summary* entries; } ;
struct f2fs_summary {int /*<<< orphan*/  ofs_in_node; int /*<<< orphan*/  nid; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct dnode_of_data {scalar_t__ nid; scalar_t__ data_blkaddr; int /*<<< orphan*/  inode_page; scalar_t__ inode_page_locked; struct page* inode; scalar_t__ ofs_in_node; int /*<<< orphan*/  node_page; } ;
struct curseg_info {unsigned int segno; TYPE_1__* sum_blk; } ;
typedef  scalar_t__ nid_t ;
typedef  scalar_t__ block_t ;
struct TYPE_2__ {struct f2fs_summary* entries; } ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 int CURSEG_HOT_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 unsigned short FUNC1 (struct f2fs_sb_info*,scalar_t__) ; 
 unsigned int FUNC2 (struct f2fs_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 int FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (struct f2fs_sb_info*,scalar_t__) ; 
 struct page* FUNC9 (struct f2fs_sb_info*,unsigned int) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 scalar_t__ FUNC13 (unsigned int,struct page*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct dnode_of_data*,int) ; 
 struct seg_entry* FUNC16 (struct f2fs_sb_info*,unsigned int) ; 
 scalar_t__ FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC22 (struct page*) ; 
 scalar_t__ FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct dnode_of_data*,struct page*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct f2fs_sb_info *sbi,
			block_t blkaddr, struct dnode_of_data *dn)
{
	struct seg_entry *sentry;
	unsigned int segno = FUNC2(sbi, blkaddr);
	unsigned short blkoff = FUNC1(sbi, blkaddr);
	struct f2fs_summary_block *sum_node;
	struct f2fs_summary sum;
	struct page *sum_page, *node_page;
	struct dnode_of_data tdn = *dn;
	nid_t ino, nid;
	struct inode *inode;
	unsigned int offset;
	block_t bidx;
	int i;

	sentry = FUNC16(sbi, segno);
	if (!FUNC14(blkoff, sentry->cur_valid_map))
		return 0;

	/* Get the previous summary */
	for (i = CURSEG_HOT_DATA; i <= CURSEG_COLD_DATA; i++) {
		struct curseg_info *curseg = FUNC0(sbi, i);
		if (curseg->segno == segno) {
			sum = curseg->sum_blk->entries[blkoff];
			goto got_it;
		}
	}

	sum_page = FUNC9(sbi, segno);
	if (FUNC3(sum_page))
		return FUNC4(sum_page);
	sum_node = (struct f2fs_summary_block *)FUNC23(sum_page);
	sum = sum_node->entries[blkoff];
	FUNC12(sum_page, 1);
got_it:
	/* Use the locked dnode page and inode */
	nid = FUNC20(sum.nid);
	if (dn->inode->i_ino == nid) {
		tdn.nid = nid;
		if (!dn->inode_page_locked)
			FUNC21(dn->inode_page);
		tdn.node_page = dn->inode_page;
		tdn.ofs_in_node = FUNC19(sum.ofs_in_node);
		goto truncate_out;
	} else if (dn->nid == nid) {
		tdn.ofs_in_node = FUNC19(sum.ofs_in_node);
		goto truncate_out;
	}

	/* Get the node page */
	node_page = FUNC8(sbi, nid);
	if (FUNC3(node_page))
		return FUNC4(node_page);

	offset = FUNC22(node_page);
	ino = FUNC17(node_page);
	FUNC12(node_page, 1);

	if (ino != dn->inode->i_ino) {
		int ret;

		/* Deallocate previous index in the node page */
		inode = FUNC10(sbi->sb, ino);
		if (FUNC3(inode))
			return FUNC4(inode);

		ret = FUNC6(inode);
		if (ret) {
			FUNC18(inode);
			return ret;
		}
	} else {
		inode = dn->inode;
	}

	bidx = FUNC13(offset, inode) +
				FUNC19(sum.ofs_in_node);

	/*
	 * if inode page is locked, unlock temporarily, but its reference
	 * count keeps alive.
	 */
	if (ino == dn->inode->i_ino && dn->inode_page_locked)
		FUNC25(dn->inode_page);

	FUNC24(&tdn, inode, NULL, NULL, 0);
	if (FUNC7(&tdn, bidx, LOOKUP_NODE))
		goto out;

	if (tdn.data_blkaddr == blkaddr)
		FUNC15(&tdn, 1);

	FUNC11(&tdn);
out:
	if (ino != dn->inode->i_ino)
		FUNC18(inode);
	else if (dn->inode_page_locked)
		FUNC21(dn->inode_page);
	return 0;

truncate_out:
	if (FUNC5(tdn.inode, tdn.node_page,
					tdn.ofs_in_node) == blkaddr)
		FUNC15(&tdn, 1);
	if (dn->inode->i_ino == nid && !dn->inode_page_locked)
		FUNC25(dn->inode_page);
	return 0;
}