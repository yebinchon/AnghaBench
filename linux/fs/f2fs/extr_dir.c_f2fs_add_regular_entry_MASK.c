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
typedef  int /*<<< orphan*/  umode_t ;
struct qstr {int /*<<< orphan*/  len; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_dentry_ptr {int dummy; } ;
struct f2fs_dentry_block {int /*<<< orphan*/  dentry_bitmap; } ;
typedef  int /*<<< orphan*/  nid_t ;
typedef  scalar_t__ f2fs_hash_t ;
struct TYPE_2__ {unsigned int i_current_depth; scalar_t__ chash; unsigned int clevel; int /*<<< orphan*/  i_sem; int /*<<< orphan*/  i_dir_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FAULT_DIR_DEPTH ; 
 int /*<<< orphan*/  FI_NEW_INODE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 unsigned int MAX_DIR_HASH_DEPTH ; 
 unsigned int NR_DENTRY_IN_BLOCK ; 
 int FUNC4 (struct page*) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned long FUNC6 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct inode*,struct qstr const*,int /*<<< orphan*/ *) ; 
 struct page* FUNC10 (struct inode*,int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 struct page* FUNC12 (struct inode*,struct inode*,struct qstr const*,struct qstr const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct f2fs_dentry_ptr*,struct qstr const*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct f2fs_dentry_ptr*,struct f2fs_dentry_block*) ; 
 struct f2fs_dentry_block* FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

int FUNC28(struct inode *dir, const struct qstr *new_name,
				const struct qstr *orig_name,
				struct inode *inode, nid_t ino, umode_t mode)
{
	unsigned int bit_pos;
	unsigned int level;
	unsigned int current_depth;
	unsigned long bidx, block;
	f2fs_hash_t dentry_hash;
	unsigned int nbucket, nblock;
	struct page *dentry_page = NULL;
	struct f2fs_dentry_block *dentry_blk = NULL;
	struct f2fs_dentry_ptr d;
	struct page *page = NULL;
	int slots, err = 0;

	level = 0;
	slots = FUNC2(new_name->len);
	dentry_hash = FUNC9(dir, new_name, NULL);

	current_depth = FUNC0(dir)->i_current_depth;
	if (FUNC0(dir)->chash == dentry_hash) {
		level = FUNC0(dir)->clevel;
		FUNC0(dir)->chash = 0;
	}

start:
	if (FUNC25(FUNC1(dir), FAULT_DIR_DEPTH)) {
		FUNC15(FAULT_DIR_DEPTH);
		return -ENOSPC;
	}

	if (FUNC26(current_depth == MAX_DIR_HASH_DEPTH))
		return -ENOSPC;

	/* Increase the depth, if required */
	if (level == current_depth)
		++current_depth;

	nbucket = FUNC7(level, FUNC0(dir)->i_dir_level);
	nblock = FUNC5(level);

	bidx = FUNC6(level, FUNC0(dir)->i_dir_level,
				(FUNC21(dentry_hash) % nbucket));

	for (block = bidx; block <= (bidx + nblock - 1); block++) {
		dentry_page = FUNC10(dir, NULL, block, true);
		if (FUNC3(dentry_page))
			return FUNC4(dentry_page);

		dentry_blk = FUNC23(dentry_page);
		bit_pos = FUNC14(&dentry_blk->dentry_bitmap,
						slots, NR_DENTRY_IN_BLOCK);
		if (bit_pos < NR_DENTRY_IN_BLOCK)
			goto add_dentry;

		FUNC13(dentry_page, 1);
	}

	/* Move to next level to find the empty slot for new dentry */
	++level;
	goto start;
add_dentry:
	FUNC19(dentry_page, DATA, true, true);

	if (inode) {
		FUNC8(&FUNC0(inode)->i_sem);
		page = FUNC12(inode, dir, new_name,
						orig_name, NULL);
		if (FUNC3(page)) {
			err = FUNC4(page);
			goto fail;
		}
	}

	FUNC22(NULL, &d, dentry_blk);
	FUNC16(ino, mode, &d, new_name, dentry_hash, bit_pos);

	FUNC24(dentry_page);

	if (inode) {
		FUNC11(inode, dir->i_ino);

		/* synchronize inode page's data from inode cache */
		if (FUNC20(inode, FI_NEW_INODE))
			FUNC17(inode, page);

		FUNC13(page, 1);
	}

	FUNC18(dir, inode, current_depth);
fail:
	if (inode)
		FUNC27(&FUNC0(inode)->i_sem);

	FUNC13(dentry_page, 1);

	return err;
}