#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct inode {TYPE_3__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_sync_tid; int /*<<< orphan*/  i_datasync_tid; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_12__ {int j_flags; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_14__ {int s_mount_flags; TYPE_2__* s_journal; } ;
struct TYPE_13__ {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_11__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 int EIO ; 
 int EROFS ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 int EXT4_MF_FS_ABORTED ; 
 TYPE_7__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int JBD2_BARRIER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*) ; 
 int FUNC10 (struct file*) ; 
 int FUNC11 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20(struct file *file, loff_t start, loff_t end, int datasync)
{
	struct inode *inode = file->f_mapping->host;
	struct ext4_inode_info *ei = FUNC0(inode);
	journal_t *journal = FUNC1(inode->i_sb)->s_journal;
	int ret = 0, err;
	tid_t commit_tid;
	bool needs_barrier = false;

	if (FUNC19(FUNC6(FUNC1(inode->i_sb))))
		return -EIO;

	FUNC2(FUNC7() == NULL);

	FUNC17(file, datasync);

	if (FUNC14(inode->i_sb)) {
		/* Make sure that we read updated s_mount_flags value */
		FUNC15();
		if (FUNC1(inode->i_sb)->s_mount_flags & EXT4_MF_FS_ABORTED)
			ret = -EROFS;
		goto out;
	}

	if (!journal) {
		ret = FUNC3(file, start, end, datasync);
		if (!ret)
			ret = FUNC9(inode);
		if (FUNC16(inode->i_sb, BARRIER))
			goto issue_flush;
		goto out;
	}

	ret = FUNC11(file, start, end);
	if (ret)
		return ret;
	/*
	 * data=writeback,ordered:
	 *  The caller's filemap_fdatawrite()/wait will sync the data.
	 *  Metadata is in the journal, we wait for proper transaction to
	 *  commit here.
	 *
	 * data=journal:
	 *  filemap_fdatawrite won't do anything (the buffers are clean).
	 *  ext4_force_commit will write the file data into the journal and
	 *  will wait on that.
	 *  filemap_fdatawait() will encounter a ton of newly-dirtied pages
	 *  (they were dirtied by commit).  But that's OK - the blocks are
	 *  safe in-journal, which is all fsync() needs to ensure.
	 */
	if (FUNC8(inode)) {
		ret = FUNC5(inode->i_sb);
		goto out;
	}

	commit_tid = datasync ? ei->i_datasync_tid : ei->i_sync_tid;
	if (journal->j_flags & JBD2_BARRIER &&
	    !FUNC13(journal, commit_tid))
		needs_barrier = true;
	ret = FUNC12(journal, commit_tid);
	if (needs_barrier) {
	issue_flush:
		err = FUNC4(inode->i_sb->s_bdev, GFP_KERNEL, NULL);
		if (!ret)
			ret = err;
	}
out:
	err = FUNC10(file);
	if (ret == 0)
		ret = err;
	FUNC18(inode, ret);
	return ret;
}