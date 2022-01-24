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
struct page {int dummy; } ;
struct node_info {size_t nid; int /*<<< orphan*/  version; int /*<<< orphan*/  blk_addr; int /*<<< orphan*/  ino; } ;
struct nat_entry {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nat_tree_lock; } ;
struct f2fs_nat_entry {int /*<<< orphan*/  block_addr; } ;
struct f2fs_nat_block {struct f2fs_nat_entry* entries; } ;
struct f2fs_journal {int dummy; } ;
struct curseg_info {int /*<<< orphan*/  journal_rwsem; struct f2fs_journal* journal; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  size_t nid_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURSEG_HOT_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int EFAULT ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  NAT_JOURNAL ; 
 struct f2fs_nm_info* FUNC2 (struct f2fs_sb_info*) ; 
 int FUNC3 (struct page*) ; 
 size_t FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct nat_entry* FUNC6 (struct f2fs_nm_info*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,size_t,struct f2fs_nat_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct page* FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct f2fs_journal*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_nat_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct nat_entry*) ; 
 struct f2fs_nat_entry FUNC19 (struct f2fs_journal*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct node_info*,struct f2fs_nat_entry*) ; 
 scalar_t__ FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23(struct f2fs_sb_info *sbi, nid_t nid,
						struct node_info *ni)
{
	struct f2fs_nm_info *nm_i = FUNC2(sbi);
	struct curseg_info *curseg = FUNC0(sbi, CURSEG_HOT_DATA);
	struct f2fs_journal *journal = curseg->journal;
	nid_t start_nid = FUNC4(nid);
	struct f2fs_nat_block *nat_blk;
	struct page *page = NULL;
	struct f2fs_nat_entry ne;
	struct nat_entry *e;
	pgoff_t index;
	block_t blkaddr;
	int i;

	ni->nid = nid;

	/* Check nat cache */
	FUNC9(&nm_i->nat_tree_lock);
	e = FUNC6(nm_i, nid);
	if (e) {
		ni->ino = FUNC17(e);
		ni->blk_addr = FUNC16(e);
		ni->version = FUNC18(e);
		FUNC22(&nm_i->nat_tree_lock);
		return 0;
	}

	FUNC15(&ne, 0, sizeof(struct f2fs_nat_entry));

	/* Check current segment summary */
	FUNC9(&curseg->journal_rwsem);
	i = FUNC12(journal, NAT_JOURNAL, nid, 0);
	if (i >= 0) {
		ne = FUNC19(journal, i);
		FUNC20(ni, &ne);
	}
	FUNC22(&curseg->journal_rwsem);
	if (i >= 0) {
		FUNC22(&nm_i->nat_tree_lock);
		goto cache;
	}

	/* Fill node_info from nat page */
	index = FUNC8(sbi, nid);
	FUNC22(&nm_i->nat_tree_lock);

	page = FUNC10(sbi, index);
	if (FUNC1(page))
		return FUNC3(page);

	nat_blk = (struct f2fs_nat_block *)FUNC21(page);
	ne = nat_blk->entries[nid - start_nid];
	FUNC20(ni, &ne);
	FUNC13(page, 1);
cache:
	blkaddr = FUNC14(ne.block_addr);
	if (FUNC5(blkaddr) &&
		!FUNC11(sbi, blkaddr, DATA_GENERIC_ENHANCE))
		return -EFAULT;

	/* cache nat entry */
	FUNC7(sbi, nid, &ne);
	return 0;
}