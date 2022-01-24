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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_journal_flag_rwsem; } ;
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_JOURNAL_DATA ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 struct ext4_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23(struct inode *inode, int val)
{
	journal_t *journal;
	handle_t *handle;
	int err;
	struct ext4_sb_info *sbi = FUNC2(inode->i_sb);

	/*
	 * We have to be very careful here: changing a data block's
	 * journaling status dynamically is dangerous.  If we write a
	 * data block to the journal, change the status and then delete
	 * that block, we risk forgetting to revoke the old log record
	 * from the journal and so a subsequent replay can corrupt data.
	 * So, first we make sure that the journal is empty and that
	 * nobody is changing anything.
	 */

	journal = FUNC1(inode);
	if (!journal)
		return 0;
	if (FUNC16(journal))
		return -EROFS;

	/* Wait for all existing dio workers */
	FUNC15(inode);

	/*
	 * Before flushing the journal and switching inode's aops, we have
	 * to flush all dirty data the inode has. There can be outstanding
	 * delayed allocations, there can be unwritten extents created by
	 * fallocate or buffered writes in dioread_nolock mode covered by
	 * dirty data which can be converted only after flushing the dirty
	 * data (and journalled aops don't know how to handle these cases).
	 */
	if (val) {
		FUNC5(&FUNC0(inode)->i_mmap_sem);
		err = FUNC14(inode->i_mapping);
		if (err < 0) {
			FUNC22(&FUNC0(inode)->i_mmap_sem);
			return err;
		}
	}

	FUNC20(&sbi->s_journal_flag_rwsem);
	FUNC18(journal);

	/*
	 * OK, there are no updates running now, and all cached data is
	 * synced to disk.  We are now in a completely consistent state
	 * which doesn't have anything in the journal, and we know that
	 * no filesystem updates are running, so it is safe to modify
	 * the inode's in-core data-journaling state flag now.
	 */

	if (val)
		FUNC12(inode, EXT4_INODE_JOURNAL_DATA);
	else {
		err = FUNC17(journal);
		if (err < 0) {
			FUNC19(journal);
			FUNC21(&sbi->s_journal_flag_rwsem);
			return err;
		}
		FUNC6(inode, EXT4_INODE_JOURNAL_DATA);
	}
	FUNC11(inode);

	FUNC19(journal);
	FUNC21(&sbi->s_journal_flag_rwsem);

	if (val)
		FUNC22(&FUNC0(inode)->i_mmap_sem);

	/* Finally we can mark the inode as dirty. */

	handle = FUNC8(inode, EXT4_HT_INODE, 1);
	if (FUNC3(handle))
		return FUNC4(handle);

	err = FUNC10(handle, inode);
	FUNC7(handle);
	FUNC9(handle);
	FUNC13(inode->i_sb, err);

	return err;
}