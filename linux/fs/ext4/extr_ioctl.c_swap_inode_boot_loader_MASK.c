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
struct super_block {int dummy; } ;
struct inode {int i_nlink; int i_bytes; scalar_t__ i_blocks; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; void* i_generation; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; scalar_t__ i_flags; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_mapping; } ;
struct ext4_inode_info {int i_flags; int /*<<< orphan*/  i_mmap_sem; int /*<<< orphan*/  i_data; } ;
typedef  int qsize_t ;
typedef  struct inode handle_t ;
typedef  scalar_t__ blkcnt_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  EXT4_BOOT_LOADER_INO ; 
 int /*<<< orphan*/  EXT4_HT_MOVE_EXTENTS ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_IGET_SPECIAL ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int EXT4_JOURNAL_DATA_FL ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 long FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 int FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct inode*) ; 
 scalar_t__ FUNC19 (struct super_block*) ; 
 scalar_t__ FUNC20 (struct inode*) ; 
 struct inode* FUNC21 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC22 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int FUNC24 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC34 (struct inode*) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (struct inode*) ; 
 int /*<<< orphan*/  FUNC39 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC40 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC44(struct super_block *sb,
				struct inode *inode)
{
	handle_t *handle;
	int err;
	struct inode *inode_bl;
	struct ext4_inode_info *ei_bl;
	qsize_t size, size_bl, diff;
	blkcnt_t blocks;
	unsigned short bytes;

	inode_bl = FUNC21(sb, EXT4_BOOT_LOADER_INO, EXT4_IGET_SPECIAL);
	if (FUNC3(inode_bl))
		return FUNC7(inode_bl);
	ei_bl = FUNC0(inode_bl);

	/* Protect orig inodes against a truncate and make sure,
	 * that only 1 swap_inode_boot_loader is running. */
	FUNC35(inode, inode_bl);

	if (inode->i_nlink != 1 || !FUNC8(inode->i_mode) ||
	    FUNC6(inode) || FUNC2(inode) ||
	    (FUNC0(inode)->i_flags & EXT4_JOURNAL_DATA_FL) ||
	    FUNC20(inode)) {
		err = -EINVAL;
		goto journal_err_out;
	}

	if (FUNC5(inode) || FUNC1(inode) || FUNC4(inode) ||
	    !FUNC32(inode) || !FUNC9(CAP_SYS_ADMIN)) {
		err = -EPERM;
		goto journal_err_out;
	}

	FUNC11(&FUNC0(inode)->i_mmap_sem);
	err = FUNC27(inode->i_mapping);
	if (err)
		goto err_out;

	err = FUNC27(inode_bl->i_mapping);
	if (err)
		goto err_out;

	/* Wait for all existing dio workers */
	FUNC31(inode);
	FUNC31(inode_bl);

	FUNC41(&inode->i_data, 0);
	FUNC41(&inode_bl->i_data, 0);

	handle = FUNC22(inode_bl, EXT4_HT_MOVE_EXTENTS, 2);
	if (FUNC3(handle)) {
		err = -EINVAL;
		goto err_out;
	}

	/* Protect extent tree against block allocations via delalloc */
	FUNC16(inode, inode_bl);

	if (inode_bl->i_nlink == 0) {
		/* this inode has never been used as a BOOT_LOADER */
		FUNC39(inode_bl, 1);
		FUNC30(inode_bl, 0);
		FUNC28(inode_bl, 0);
		inode_bl->i_flags = 0;
		ei_bl->i_flags = 0;
		FUNC33(inode_bl, 1);
		FUNC29(inode_bl, 0);
		inode_bl->i_mode = S_IFREG;
		if (FUNC19(sb)) {
			FUNC25(inode_bl, EXT4_INODE_EXTENTS);
			FUNC18(handle, inode_bl);
		} else
			FUNC36(ei_bl->i_data, 0, sizeof(ei_bl->i_data));
	}

	err = FUNC14(inode);
	if (err)
		goto err_out1;

	size = (qsize_t)(inode->i_blocks) * (1 << 9) + inode->i_bytes;
	size_bl = (qsize_t)(inode_bl->i_blocks) * (1 << 9) + inode_bl->i_bytes;
	diff = size - size_bl;
	FUNC40(inode, inode_bl);

	inode->i_ctime = inode_bl->i_ctime = FUNC10(inode);

	inode->i_generation = FUNC37();
	inode_bl->i_generation = FUNC37();
	FUNC38(inode);
	FUNC38(inode_bl);

	FUNC15(inode);

	err = FUNC24(handle, inode);
	if (err < 0) {
		/* No need to update quota information. */
		FUNC26(inode->i_sb,
			"couldn't mark inode #%lu dirty (err %d)",
			inode->i_ino, err);
		/* Revert all changes: */
		FUNC40(inode, inode_bl);
		FUNC24(handle, inode);
		goto err_out1;
	}

	blocks = inode_bl->i_blocks;
	bytes = inode_bl->i_bytes;
	inode_bl->i_blocks = inode->i_blocks;
	inode_bl->i_bytes = inode->i_bytes;
	err = FUNC24(handle, inode_bl);
	if (err < 0) {
		/* No need to update quota information. */
		FUNC26(inode_bl->i_sb,
			"couldn't mark inode #%lu dirty (err %d)",
			inode_bl->i_ino, err);
		goto revert;
	}

	/* Bootloader inode should not be counted into quota information. */
	if (diff > 0)
		FUNC13(inode, diff);
	else
		err = FUNC12(inode, -1 * diff);

	if (err < 0) {
revert:
		/* Revert all changes: */
		inode_bl->i_blocks = blocks;
		inode_bl->i_bytes = bytes;
		FUNC40(inode, inode_bl);
		FUNC24(handle, inode);
		FUNC24(handle, inode_bl);
	}

err_out1:
	FUNC23(handle);
	FUNC17(inode, inode_bl);

err_out:
	FUNC43(&FUNC0(inode)->i_mmap_sem);
journal_err_out:
	FUNC42(inode, inode_bl);
	FUNC34(inode_bl);
	return err;
}