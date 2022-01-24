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
struct inode {int /*<<< orphan*/  i_ino; struct address_space* i_mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int in_list; int retry; struct page* encrypted_page; scalar_t__ old_blkaddr; scalar_t__ new_blkaddr; struct page* page; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  op; int /*<<< orphan*/  temp; int /*<<< orphan*/  type; int /*<<< orphan*/  ino; struct f2fs_sb_info* sbi; } ;
struct extent_info {scalar_t__ fofs; scalar_t__ blk; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  COLD ; 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE_READ ; 
 int EFSCORRUPTED ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int FGP_CREAT ; 
 int FGP_LOCK ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (struct address_space*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*,scalar_t__,struct extent_info*) ; 
 struct page* FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 int FUNC10 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, pgoff_t index)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct address_space *mapping = inode->i_mapping;
	struct dnode_of_data dn;
	struct page *page;
	struct extent_info ei = {0, 0, 0};
	struct f2fs_io_info fio = {
		.sbi = sbi,
		.ino = inode->i_ino,
		.type = DATA,
		.temp = COLD,
		.op = REQ_OP_READ,
		.op_flags = 0,
		.encrypted_page = NULL,
		.in_list = false,
		.retry = false,
	};
	int err;

	page = FUNC4(mapping, index, true);
	if (!page)
		return -ENOMEM;

	if (FUNC6(inode, index, &ei)) {
		dn.data_blkaddr = ei.blk + index - ei.fofs;
		if (FUNC14(!FUNC5(sbi, dn.data_blkaddr,
						DATA_GENERIC_ENHANCE_READ))) {
			err = -EFSCORRUPTED;
			goto put_page;
		}
		goto got_it;
	}

	FUNC13(&dn, inode, NULL, NULL, 0);
	err = FUNC3(&dn, index, LOOKUP_NODE);
	if (err)
		goto put_page;
	FUNC8(&dn);

	if (!FUNC2(dn.data_blkaddr)) {
		err = -ENOENT;
		goto put_page;
	}
	if (FUNC14(!FUNC5(sbi, dn.data_blkaddr,
						DATA_GENERIC_ENHANCE))) {
		err = -EFSCORRUPTED;
		goto put_page;
	}
got_it:
	/* read page */
	fio.page = page;
	fio.new_blkaddr = fio.old_blkaddr = dn.data_blkaddr;

	/*
	 * don't cache encrypted data into meta inode until previous dirty
	 * data were writebacked to avoid racing between GC and flush.
	 */
	FUNC12(page, DATA, true, true);

	FUNC11(inode, dn.data_blkaddr);

	fio.encrypted_page = FUNC7(FUNC1(sbi),
					dn.data_blkaddr,
					FGP_LOCK | FGP_CREAT, GFP_NOFS);
	if (!fio.encrypted_page) {
		err = -ENOMEM;
		goto put_page;
	}

	err = FUNC10(&fio);
	if (err)
		goto put_encrypted_page;
	FUNC9(fio.encrypted_page, 0);
	FUNC9(page, 1);
	return 0;
put_encrypted_page:
	FUNC9(fio.encrypted_page, 1);
put_page:
	FUNC9(page, 1);
	return err;
}