#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct node_info {scalar_t__ blk_addr; scalar_t__ version; scalar_t__ flag; int /*<<< orphan*/  ino; int /*<<< orphan*/  nid; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int node_changed; int /*<<< orphan*/  nid; TYPE_1__* inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 struct page* FUNC0 (int) ; 
 struct f2fs_sb_info* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FI_NO_ALLOC ; 
 int /*<<< orphan*/  NEW_ADDR ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int) ; 
 int FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int FUNC17 (struct f2fs_sb_info*,TYPE_1__*,int) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct f2fs_sb_info*,struct node_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (struct page*) ; 
 scalar_t__ FUNC22 (int) ; 

struct page *FUNC23(struct dnode_of_data *dn, unsigned int ofs)
{
	struct f2fs_sb_info *sbi = FUNC1(dn->inode);
	struct node_info new_ni;
	struct page *page;
	int err;

	if (FUNC22(FUNC18(dn->inode, FI_NO_ALLOC)))
		return FUNC0(-EPERM);

	page = FUNC10(FUNC2(sbi), dn->nid, false);
	if (!page)
		return FUNC0(-ENOMEM);

	if (FUNC22((err = FUNC17(sbi, dn->inode, !ofs))))
		goto fail;

#ifdef CONFIG_F2FS_CHECK_FS
	err = f2fs_get_node_info(sbi, dn->nid, &new_ni);
	if (err) {
		dec_valid_node_count(sbi, dn->inode, !ofs);
		goto fail;
	}
	f2fs_bug_on(sbi, new_ni.blk_addr != NULL_ADDR);
#endif
	new_ni.nid = dn->nid;
	new_ni.ino = dn->inode->i_ino;
	new_ni.blk_addr = NULL_ADDR;
	new_ni.flag = 0;
	new_ni.version = 0;
	FUNC20(sbi, &new_ni, NEW_ADDR, false);

	FUNC14(page, NODE, true, true);
	FUNC15(page, dn->nid, dn->inode->i_ino, ofs, true);
	FUNC19(page, FUNC4(dn->inode->i_mode));
	if (!FUNC3(page))
		FUNC5(page);
	if (FUNC21(page))
		dn->node_changed = true;

	if (FUNC11(ofs))
		FUNC12(dn->inode, dn->nid);

	if (ofs == 0)
		FUNC16(sbi);
	return page;

fail:
	FUNC6(page);
	FUNC13(page, 1);
	return FUNC0(err);
}