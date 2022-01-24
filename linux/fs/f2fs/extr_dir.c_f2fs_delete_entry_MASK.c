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
struct page {scalar_t__ index; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; } ;
struct f2fs_dir_entry {int /*<<< orphan*/  name_len; } ;
struct f2fs_dentry_block {int /*<<< orphan*/  dentry_bitmap; struct f2fs_dir_entry* dentry; } ;
struct TYPE_2__ {scalar_t__ fsync_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FSYNC_MODE_STRICT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int NR_DENTRY_IN_BLOCK ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  TRANS_DIR_INO ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 void FUNC11 (struct f2fs_dir_entry*,struct page*,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct inode*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 unsigned int FUNC20 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 struct f2fs_dentry_block* FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 

void FUNC26(struct f2fs_dir_entry *dentry, struct page *page,
					struct inode *dir, struct inode *inode)
{
	struct	f2fs_dentry_block *dentry_blk;
	unsigned int bit_pos;
	int slots = FUNC3(FUNC22(dentry->name_len));
	int i;

	FUNC18(FUNC1(dir), REQ_TIME);

	if (FUNC2(FUNC1(dir)).fsync_mode == FSYNC_MODE_STRICT)
		FUNC8(FUNC1(dir), dir->i_ino, TRANS_DIR_INO);

	if (FUNC13(dir))
		return FUNC11(dentry, page, dir, inode);

	FUNC23(page);
	FUNC19(page, DATA, true, true);

	dentry_blk = FUNC24(page);
	bit_pos = dentry - dentry_blk->dentry;
	for (i = 0; i < slots; i++)
		FUNC4(bit_pos + i, &dentry_blk->dentry_bitmap);

	/* Let's check and deallocate this dentry page */
	bit_pos = FUNC20(&dentry_blk->dentry_bitmap,
			NR_DENTRY_IN_BLOCK,
			0);
	FUNC25(page);

	dir->i_ctime = dir->i_mtime = FUNC7(dir);
	FUNC14(dir, false);

	if (inode)
		FUNC12(dir, inode);

	if (bit_pos == NR_DENTRY_IN_BLOCK &&
		!FUNC17(dir, page->index, page->index + 1)) {
		FUNC9(page);
		FUNC6(page);
		FUNC10(page);
		FUNC0(page);
		FUNC5(page);
		FUNC21(dir);
		FUNC16(dir);
	}
	FUNC15(page, 1);
}