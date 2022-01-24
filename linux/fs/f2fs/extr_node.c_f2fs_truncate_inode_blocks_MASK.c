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
struct page {scalar_t__ mapping; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_inode {scalar_t__* i_nid; } ;
struct dnode_of_data {int /*<<< orphan*/  nid; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOENT ; 
 struct f2fs_inode* FUNC2 (struct page*) ; 
 struct f2fs_sb_info* FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int NIDS_PER_BLOCK ; 
 int /*<<< orphan*/  NODE ; 
#define  NODE_DIND_BLOCK 132 
#define  NODE_DIR1_BLOCK 131 
#define  NODE_DIR2_BLOCK 130 
#define  NODE_IND1_BLOCK 129 
#define  NODE_IND2_BLOCK 128 
 scalar_t__ FUNC5 (struct f2fs_sb_info*) ; 
 int FUNC6 (struct page*) ; 
 struct page* FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct dnode_of_data*,struct inode*,struct page*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int FUNC17 (struct dnode_of_data*) ; 
 int FUNC18 (struct dnode_of_data*,unsigned int,int,int) ; 
 int FUNC19 (struct dnode_of_data*,struct f2fs_inode*,int*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 

int FUNC21(struct inode *inode, pgoff_t from)
{
	struct f2fs_sb_info *sbi = FUNC3(inode);
	int err = 0, cont = 1;
	int level, offset[4], noffset[4];
	unsigned int nofs = 0;
	struct f2fs_inode *ri;
	struct dnode_of_data dn;
	struct page *page;

	FUNC15(inode, from);

	level = FUNC10(inode, from, offset, noffset);
	if (level < 0)
		return level;

	page = FUNC7(sbi, inode->i_ino);
	if (FUNC4(page)) {
		FUNC16(inode, FUNC6(page));
		return FUNC6(page);
	}

	FUNC13(&dn, inode, page, NULL, 0);
	FUNC20(page);

	ri = FUNC2(page);
	switch (level) {
	case 0:
	case 1:
		nofs = noffset[1];
		break;
	case 2:
		nofs = noffset[1];
		if (!offset[level - 1])
			goto skip_partial;
		err = FUNC19(&dn, ri, offset, level);
		if (err < 0 && err != -ENOENT)
			goto fail;
		nofs += 1 + NIDS_PER_BLOCK;
		break;
	case 3:
		nofs = 5 + 2 * NIDS_PER_BLOCK;
		if (!offset[level - 1])
			goto skip_partial;
		err = FUNC19(&dn, ri, offset, level);
		if (err < 0 && err != -ENOENT)
			goto fail;
		break;
	default:
		FUNC0();
	}

skip_partial:
	while (cont) {
		dn.nid = FUNC11(ri->i_nid[offset[0] - NODE_DIR1_BLOCK]);
		switch (offset[0]) {
		case NODE_DIR1_BLOCK:
		case NODE_DIR2_BLOCK:
			err = FUNC17(&dn);
			break;

		case NODE_IND1_BLOCK:
		case NODE_IND2_BLOCK:
			err = FUNC18(&dn, nofs, offset[1], 2);
			break;

		case NODE_DIND_BLOCK:
			err = FUNC18(&dn, nofs, offset[1], 3);
			cont = 0;
			break;

		default:
			FUNC0();
		}
		if (err < 0 && err != -ENOENT)
			goto fail;
		if (offset[1] == 0 &&
				ri->i_nid[offset[0] - NODE_DIR1_BLOCK]) {
			FUNC12(page);
			FUNC1(page->mapping != FUNC5(sbi));
			FUNC9(page, NODE, true, true);
			ri->i_nid[offset[0] - NODE_DIR1_BLOCK] = 0;
			FUNC14(page);
			FUNC20(page);
		}
		offset[1] = 0;
		offset[0]++;
		nofs += err;
	}
fail:
	FUNC8(page, 0);
	FUNC16(inode, err);
	return err > 0 ? 0 : err;
}