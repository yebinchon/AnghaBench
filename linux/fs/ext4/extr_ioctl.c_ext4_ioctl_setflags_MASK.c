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
struct inode {struct super_block* i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct ext4_inode_info {unsigned int i_flags; } ;
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int /*<<< orphan*/  DAX ; 
 int EBUSY ; 
 int ENOTDIR ; 
 int ENOTEMPTY ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 unsigned int EXT4_CASEFOLD_FL ; 
 unsigned int EXT4_EOFBLOCKS_FL ; 
 unsigned int EXT4_EXTENTS_FL ; 
 unsigned int EXT4_FL_USER_MODIFIABLE ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 unsigned int EXT4_IMMUTABLE_FL ; 
 unsigned int EXT4_JOURNAL_DATA_FL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*) ; 
 int FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC17 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int FUNC20 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int FUNC23 (struct inode*) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 scalar_t__ FUNC26 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct inode*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC28(struct inode *inode,
			       unsigned int flags)
{
	struct ext4_inode_info *ei = FUNC0(inode);
	handle_t *handle = NULL;
	int err = -EPERM, migrate = 0;
	struct ext4_iloc iloc;
	unsigned int oldflags, mask, i;
	unsigned int jflag;
	struct super_block *sb = inode->i_sb;

	/* Is it quota file? Do not allow user to mess with it */
	if (FUNC16(inode))
		goto flags_out;

	oldflags = ei->i_flags;

	/* The JOURNAL_DATA flag is modifiable only by root */
	jflag = flags & EXT4_JOURNAL_DATA_FL;

	err = FUNC27(inode, oldflags, flags);
	if (err)
		goto flags_out;

	/*
	 * The JOURNAL_DATA flag can only be changed by
	 * the relevant capability.
	 */
	if ((jflag ^ oldflags) & (EXT4_JOURNAL_DATA_FL)) {
		if (!FUNC7(CAP_SYS_RESOURCE))
			goto flags_out;
	}
	if ((flags ^ oldflags) & EXT4_EXTENTS_FL)
		migrate = 1;

	if (flags & EXT4_EOFBLOCKS_FL) {
		/* we don't support adding EOFBLOCKS flag */
		if (!(oldflags & EXT4_EOFBLOCKS_FL)) {
			err = -EOPNOTSUPP;
			goto flags_out;
		}
	} else if (oldflags & EXT4_EOFBLOCKS_FL) {
		err = FUNC23(inode);
		if (err)
			goto flags_out;
	}

	if ((flags ^ oldflags) & EXT4_CASEFOLD_FL) {
		if (!FUNC14(sb)) {
			err = -EOPNOTSUPP;
			goto flags_out;
		}

		if (!FUNC5(inode->i_mode)) {
			err = -ENOTDIR;
			goto flags_out;
		}

		if (!FUNC11(inode)) {
			err = -ENOTEMPTY;
			goto flags_out;
		}
	}

	/*
	 * Wait for all pending directio and then flush all the dirty pages
	 * for this file.  The flush marks all the pages readonly, so any
	 * subsequent attempt to write to the file (particularly mmap pages)
	 * will come through the filesystem and fail.
	 */
	if (FUNC6(inode->i_mode) && !FUNC2(inode) &&
	    (flags & EXT4_IMMUTABLE_FL)) {
		FUNC25(inode);
		err = FUNC24(inode->i_mapping);
		if (err)
			goto flags_out;
	}

	handle = FUNC17(inode, EXT4_HT_INODE, 1);
	if (FUNC1(handle)) {
		err = FUNC4(handle);
		goto flags_out;
	}
	if (FUNC3(inode))
		FUNC13(handle);
	err = FUNC20(handle, inode, &iloc);
	if (err)
		goto flags_err;

	for (i = 0, mask = 1; i < 32; i++, mask <<= 1) {
		if (!(mask & EXT4_FL_USER_MODIFIABLE))
			continue;
		/* These flags get special treatment later */
		if (mask == EXT4_JOURNAL_DATA_FL || mask == EXT4_EXTENTS_FL)
			continue;
		if (mask & flags)
			FUNC21(inode, i);
		else
			FUNC10(inode, i);
	}

	FUNC22(inode);
	inode->i_ctime = FUNC8(inode);

	err = FUNC19(handle, inode, &iloc);
flags_err:
	FUNC18(handle);
	if (err)
		goto flags_out;

	if ((jflag ^ oldflags) & (EXT4_JOURNAL_DATA_FL)) {
		/*
		 * Changes to the journaling mode can cause unsafe changes to
		 * S_DAX if we are using the DAX mount option.
		 */
		if (FUNC26(inode->i_sb, DAX)) {
			err = -EBUSY;
			goto flags_out;
		}

		err = FUNC9(inode, jflag);
		if (err)
			goto flags_out;
	}
	if (migrate) {
		if (flags & EXT4_EXTENTS_FL)
			err = FUNC12(inode);
		else
			err = FUNC15(inode);
	}

flags_out:
	return err;
}