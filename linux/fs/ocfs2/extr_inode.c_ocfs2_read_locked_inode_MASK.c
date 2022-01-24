#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; int /*<<< orphan*/  fs_generation; } ;
struct ocfs2_find_inode_args {int fi_flags; scalar_t__ fi_blkno; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_rdev; } ;
struct TYPE_5__ {TYPE_1__ dev1; } ;
struct ocfs2_dinode {int i_flags; int /*<<< orphan*/  i_blkno; TYPE_2__ id1; int /*<<< orphan*/  i_mode; } ;
struct inode {int /*<<< orphan*/  i_rdev; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip_open_lockres; int /*<<< orphan*/  ip_inode_lockres; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_BH_IGNORE_CACHE ; 
 int OCFS2_FI_FLAG_FILECHECK_CHK ; 
 int OCFS2_FI_FLAG_FILECHECK_FIX ; 
 int OCFS2_FI_FLAG_ORPHAN_RECOVERY ; 
 int OCFS2_FI_FLAG_SYSFILE ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_LOCK_TYPE_META ; 
 int /*<<< orphan*/  OCFS2_LOCK_TYPE_OPEN ; 
 struct ocfs2_super* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  OCFS2_SYSTEM_FL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC19 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*) ; 
 int FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,struct ocfs2_dinode*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ; 
 int FUNC26 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC29 (struct ocfs2_super*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (unsigned long long,int) ; 

__attribute__((used)) static int FUNC31(struct inode *inode,
				   struct ocfs2_find_inode_args *args)
{
	struct super_block *sb;
	struct ocfs2_super *osb;
	struct ocfs2_dinode *fe;
	struct buffer_head *bh = NULL;
	int status, can_lock, lock_level = 0;
	u32 generation = 0;

	status = -EINVAL;
	sb = inode->i_sb;
	osb = FUNC3(sb);

	/*
	 * To improve performance of cold-cache inode stats, we take
	 * the cluster lock here if possible.
	 *
	 * Generally, OCFS2 never trusts the contents of an inode
	 * unless it's holding a cluster lock, so taking it here isn't
	 * a correctness issue as much as it is a performance
	 * improvement.
	 *
	 * There are three times when taking the lock is not a good idea:
	 *
	 * 1) During startup, before we have initialized the DLM.
	 *
	 * 2) If we are reading certain system files which never get
	 *    cluster locks (local alloc, truncate log).
	 *
	 * 3) If the process doing the iget() is responsible for
	 *    orphan dir recovery. We're holding the orphan dir lock and
	 *    can get into a deadlock with another process on another
	 *    node in ->delete_inode().
	 *
	 * #1 and #2 can be simply solved by never taking the lock
	 * here for system files (which are the only type we read
	 * during mount). It's a heavier approach, but our main
	 * concern is user-accessible files anyway.
	 *
	 * #3 works itself out because we'll eventually take the
	 * cluster lock before trusting anything anyway.
	 */
	can_lock = !(args->fi_flags & OCFS2_FI_FLAG_SYSFILE)
		&& !(args->fi_flags & OCFS2_FI_FLAG_ORPHAN_RECOVERY)
		&& !FUNC22(osb);

	FUNC30(
		(unsigned long long)FUNC2(inode)->ip_blkno, can_lock);

	/*
	 * To maintain backwards compatibility with older versions of
	 * ocfs2-tools, we still store the generation value for system
	 * files. The only ones that actually matter to userspace are
	 * the journals, but it's easier and inexpensive to just flag
	 * all system files similarly.
	 */
	if (args->fi_flags & OCFS2_FI_FLAG_SYSFILE)
		generation = osb->fs_generation;

	FUNC20(&FUNC2(inode)->ip_inode_lockres,
				  OCFS2_LOCK_TYPE_META,
				  generation, inode);

	FUNC20(&FUNC2(inode)->ip_open_lockres,
				  OCFS2_LOCK_TYPE_OPEN,
				  0, inode);

	if (can_lock) {
		status = FUNC23(inode);
		if (status) {
			FUNC13(inode);
			FUNC15(status);
			return status;
		}
		status = FUNC19(inode, NULL, lock_level);
		if (status) {
			FUNC13(inode);
			FUNC15(status);
			return status;
		}
	}

	if (args->fi_flags & OCFS2_FI_FLAG_ORPHAN_RECOVERY) {
		status = FUNC27(inode, 0);
		if (status) {
			FUNC13(inode);
			return status;
		}
	}

	if (can_lock) {
		if (args->fi_flags & OCFS2_FI_FLAG_FILECHECK_CHK)
			status = FUNC16(inode,
						&bh, OCFS2_BH_IGNORE_CACHE, 0);
		else if (args->fi_flags & OCFS2_FI_FLAG_FILECHECK_FIX)
			status = FUNC16(inode,
						&bh, OCFS2_BH_IGNORE_CACHE, 1);
		else
			status = FUNC26(inode,
						&bh, OCFS2_BH_IGNORE_CACHE);
	} else {
		status = FUNC25(osb, args->fi_blkno, 1, &bh);
		/*
		 * If buffer is in jbd, then its checksum may not have been
		 * computed as yet.
		 */
		if (!status && !FUNC8(bh)) {
			if (args->fi_flags & OCFS2_FI_FLAG_FILECHECK_CHK)
				status = FUNC18(
								osb->sb, bh);
			else if (args->fi_flags & OCFS2_FI_FLAG_FILECHECK_FIX)
				status = FUNC17(
								osb->sb, bh);
			else
				status = FUNC28(
								osb->sb, bh);
		}
	}
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	status = -EINVAL;
	fe = (struct ocfs2_dinode *) bh->b_data;

	/*
	 * This is a code bug. Right now the caller needs to
	 * understand whether it is asking for a system file inode or
	 * not so the proper lock names can be built.
	 */
	FUNC14(!!(fe->i_flags & FUNC9(OCFS2_SYSTEM_FL)) !=
			!!(args->fi_flags & OCFS2_FI_FLAG_SYSFILE),
			"Inode %llu: system file state is ambiguous\n",
			(unsigned long long)args->fi_blkno);

	if (FUNC5(FUNC11(fe->i_mode)) ||
	    FUNC4(FUNC11(fe->i_mode)))
		inode->i_rdev = FUNC10(FUNC12(fe->id1.dev1.i_rdev));

	FUNC24(inode, fe, 0);

	FUNC0(args->fi_blkno != FUNC12(fe->i_blkno));

	if (FUNC7(bh) && !FUNC8(bh)) {
		if (can_lock) {
			FUNC21(inode, lock_level);
			lock_level = 1;
			FUNC19(inode, NULL, lock_level);
		}
		status = FUNC29(osb, bh, FUNC1(inode));
		if (status < 0) {
			FUNC15(status);
			goto bail;
		}
	}

	status = 0;

bail:
	if (can_lock)
		FUNC21(inode, lock_level);

	if (status < 0)
		FUNC13(inode);

	FUNC6(bh);

	return status;
}