#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct ocfs2_super {TYPE_2__* journal; } ;
struct ocfs2_inode_info {int /*<<< orphan*/  i_sync_tid; int /*<<< orphan*/  i_datasync_tid; int /*<<< orphan*/  ip_blkno; } ;
struct inode {TYPE_9__* i_sb; } ;
struct TYPE_13__ {TYPE_6__* dentry; } ;
struct file {TYPE_4__ f_path; TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_14__ {int j_flags; } ;
typedef  TYPE_5__ journal_t ;
struct TYPE_16__ {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_15__ {TYPE_3__ d_name; } ;
struct TYPE_11__ {TYPE_5__* j_journal; } ;
struct TYPE_10__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int JBD2_BARRIER ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 struct ocfs2_super* FUNC1 (TYPE_9__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct ocfs2_super*) ; 
 scalar_t__ FUNC8 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct file*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static int FUNC10(struct file *file, loff_t start, loff_t end,
			   int datasync)
{
	int err = 0;
	struct inode *inode = file->f_mapping->host;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_inode_info *oi = FUNC0(inode);
	journal_t *journal = osb->journal->j_journal;
	int ret;
	tid_t commit_tid;
	bool needs_barrier = false;

	FUNC9(inode, file, file->f_path.dentry,
			      oi->ip_blkno,
			      file->f_path.dentry->d_name.len,
			      file->f_path.dentry->d_name.name,
			      (unsigned long long)datasync);

	if (FUNC7(osb) || FUNC8(osb))
		return -EROFS;

	err = FUNC3(file, start, end);
	if (err)
		return err;

	commit_tid = datasync ? oi->i_datasync_tid : oi->i_sync_tid;
	if (journal->j_flags & JBD2_BARRIER &&
	    !FUNC5(journal, commit_tid))
		needs_barrier = true;
	err = FUNC4(journal, commit_tid);
	if (needs_barrier) {
		ret = FUNC2(inode->i_sb->s_bdev, GFP_KERNEL, NULL);
		if (!err)
			err = ret;
	}

	if (err)
		FUNC6(err);

	return (err < 0) ? -EIO : 0;
}