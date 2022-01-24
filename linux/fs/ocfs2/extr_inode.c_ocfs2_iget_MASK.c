#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_6__ {void* t_tid; } ;
typedef  TYPE_2__ transaction_t ;
typedef  void* tid_t ;
struct super_block {int dummy; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct ocfs2_inode_info {scalar_t__ ip_blkno; void* i_datasync_tid; void* i_sync_tid; } ;
struct ocfs2_find_inode_args {unsigned int fi_flags; int fi_sysfile_type; int /*<<< orphan*/  fi_ino; scalar_t__ fi_blkno; } ;
struct inode {int i_state; } ;
struct TYPE_7__ {int /*<<< orphan*/  j_state_lock; void* j_commit_sequence; TYPE_2__* j_committing_transaction; TYPE_2__* j_running_transaction; } ;
typedef  TYPE_3__ journal_t ;
struct TYPE_8__ {TYPE_1__* journal; } ;
struct TYPE_5__ {TYPE_3__* j_journal; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int I_NEW ; 
 struct ocfs2_inode_info* FUNC2 (struct inode*) ; 
 TYPE_4__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_find_inode_args*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_find_actor ; 
 int /*<<< orphan*/  ocfs2_init_locked_inode ; 
 int FUNC10 (struct inode*,struct ocfs2_find_inode_args*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long long,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 

struct inode *FUNC17(struct ocfs2_super *osb, u64 blkno, unsigned flags,
			 int sysfile_type)
{
	int rc = -ESTALE;
	struct inode *inode = NULL;
	struct super_block *sb = osb->sb;
	struct ocfs2_find_inode_args args;
	journal_t *journal = FUNC3(sb)->journal->j_journal;

	FUNC14((unsigned long long)blkno, flags,
			       sysfile_type);

	/* Ok. By now we've either got the offsets passed to us by the
	 * caller, or we just pulled them off the bh. Lets do some
	 * sanity checks to make sure they're OK. */
	if (blkno == 0) {
		inode = FUNC0(-EINVAL);
		FUNC9(FUNC4(inode));
		goto bail;
	}

	args.fi_blkno = blkno;
	args.fi_flags = flags;
	args.fi_ino = FUNC6(sb, blkno);
	args.fi_sysfile_type = sysfile_type;

	inode = FUNC5(sb, args.fi_ino, ocfs2_find_actor,
			     ocfs2_init_locked_inode, &args);
	/* inode was *not* in the inode cache. 2.6.x requires
	 * us to do our own read_inode call and unlock it
	 * afterwards. */
	if (inode == NULL) {
		inode = FUNC0(-ENOMEM);
		FUNC9(FUNC4(inode));
		goto bail;
	}
	FUNC13(inode->i_state);
	if (inode->i_state & I_NEW) {
		rc = FUNC10(inode, &args);
		FUNC16(inode);
	}
	if (FUNC8(inode)) {
		FUNC7(inode);
		inode = FUNC0(rc);
		goto bail;
	}

	/*
	 * Set transaction id's of transactions that have to be committed
	 * to finish f[data]sync. We set them to currently running transaction
	 * as we cannot be sure that the inode or some of its metadata isn't
	 * part of the transaction - the inode could have been reclaimed and
	 * now it is reread from disk.
	 */
	if (journal) {
		transaction_t *transaction;
		tid_t tid;
		struct ocfs2_inode_info *oi = FUNC2(inode);

		FUNC11(&journal->j_state_lock);
		if (journal->j_running_transaction)
			transaction = journal->j_running_transaction;
		else
			transaction = journal->j_committing_transaction;
		if (transaction)
			tid = transaction->t_tid;
		else
			tid = journal->j_commit_sequence;
		FUNC12(&journal->j_state_lock);
		oi->i_sync_tid = tid;
		oi->i_datasync_tid = tid;
	}

bail:
	if (!FUNC1(inode)) {
		FUNC15(inode, 
			(unsigned long long)FUNC2(inode)->ip_blkno);
	}

	return inode;
}