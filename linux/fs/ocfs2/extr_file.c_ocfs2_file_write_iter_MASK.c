#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int s_mount_opt; TYPE_3__* journal; } ;
struct kiocb {scalar_t__ ki_pos; int ki_flags; int /*<<< orphan*/  ki_complete; struct file* ki_filp; } ;
struct iov_iter {scalar_t__ nr_segs; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_7__ {TYPE_4__* dentry; } ;
struct file {int f_flags; int /*<<< orphan*/  f_mapping; TYPE_2__ f_path; } ;
typedef  int ssize_t ;
struct TYPE_10__ {scalar_t__ ip_blkno; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_9__ {TYPE_1__ d_name; } ;
struct TYPE_8__ {int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EIOCBQUEUED ; 
 int EOPNOTSUPP ; 
 int IOCB_DIRECT ; 
 int IOCB_NOWAIT ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 int OCFS2_MOUNT_COHERENCY_BUFFERED ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int O_DSYNC ; 
 int FUNC4 (struct kiocb*,struct iov_iter*) ; 
 struct inode* FUNC5 (struct file*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 size_t FUNC13 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC14 (struct kiocb*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC20 (struct kiocb*,int) ; 
 scalar_t__ FUNC21 (struct inode*,size_t,scalar_t__) ; 
 int FUNC22 (struct file*,scalar_t__,size_t,int) ; 
 int FUNC23 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int) ; 
 int FUNC25 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int FUNC26 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,struct file*,TYPE_4__*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC28 (int) ; 
 void* FUNC29 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static ssize_t FUNC30(struct kiocb *iocb,
				    struct iov_iter *from)
{
	int rw_level;
	ssize_t written = 0;
	ssize_t ret;
	size_t count = FUNC13(from);
	struct file *file = iocb->ki_filp;
	struct inode *inode = FUNC5(file);
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	int full_coherency = !(osb->s_mount_opt &
			       OCFS2_MOUNT_COHERENCY_BUFFERED);
	void *saved_ki_complete = NULL;
	int append_write = ((iocb->ki_pos + count) >=
			FUNC9(inode) ? 1 : 0);
	int direct_io = iocb->ki_flags & IOCB_DIRECT ? 1 : 0;
	int nowait = iocb->ki_flags & IOCB_NOWAIT ? 1 : 0;

	FUNC27(inode, file, file->f_path.dentry,
		(unsigned long long)FUNC2(inode)->ip_blkno,
		file->f_path.dentry->d_name.len,
		file->f_path.dentry->d_name.name,
		(unsigned int)from->nr_segs);	/* GRRRRR */

	if (!direct_io && nowait)
		return -EOPNOTSUPP;

	if (count == 0)
		return 0;

	if (nowait) {
		if (!FUNC11(inode))
			return -EAGAIN;
	} else
		FUNC10(inode);

	/*
	 * Concurrent O_DIRECT writes are allowed with
	 * mount_option "coherency=buffered".
	 * For append write, we must take rw EX.
	 */
	rw_level = (!direct_io || full_coherency || append_write);

	if (nowait)
		ret = FUNC26(inode, rw_level);
	else
		ret = FUNC23(inode, rw_level);
	if (ret < 0) {
		if (ret != -EAGAIN)
			FUNC16(ret);
		goto out_mutex;
	}

	/*
	 * O_DIRECT writes with "coherency=full" need to take EX cluster
	 * inode_lock to guarantee coherency.
	 */
	if (direct_io && full_coherency) {
		/*
		 * We need to take and drop the inode lock to force
		 * other nodes to drop their caches.  Buffered I/O
		 * already does this in write_begin().
		 */
		if (nowait)
			ret = FUNC25(inode, NULL, 1);
		else
			ret = FUNC17(inode, NULL, 1);
		if (ret < 0) {
			if (ret != -EAGAIN)
				FUNC16(ret);
			goto out;
		}

		FUNC18(inode, 1);
	}

	ret = FUNC8(iocb, from);
	if (ret <= 0) {
		if (ret)
			FUNC16(ret);
		goto out;
	}
	count = ret;

	ret = FUNC22(file, iocb->ki_pos, count, !nowait);
	if (ret < 0) {
		if (ret != -EAGAIN)
			FUNC16(ret);
		goto out;
	}

	if (direct_io && !FUNC14(iocb) &&
	    FUNC21(inode, count, iocb->ki_pos)) {
		/*
		 * Make it a sync io if it's an unaligned aio.
		 */
		saved_ki_complete = FUNC29(&iocb->ki_complete, NULL);
	}

	/* communicate with ocfs2_dio_end_io */
	FUNC20(iocb, rw_level);

	written = FUNC4(iocb, from);
	/* buffered aio wouldn't have proper lock coverage today */
	FUNC0(written == -EIOCBQUEUED && !direct_io);

	/*
	 * deep in g_f_a_w_n()->ocfs2_direct_IO we pass in a ocfs2_dio_end_io
	 * function pointer which is called when o_direct io completes so that
	 * it can unlock our rw lock.
	 * Unfortunately there are error cases which call end_io and others
	 * that don't.  so we don't have to unlock the rw_lock if either an
	 * async dio is going to do it in the future or an end_io after an
	 * error has already done it.
	 */
	if ((written == -EIOCBQUEUED) || (!FUNC19(iocb))) {
		rw_level = -1;
	}

	if (FUNC28(written <= 0))
		goto out;

	if (((file->f_flags & O_DSYNC) && !direct_io) ||
	    FUNC1(inode)) {
		ret = FUNC7(file->f_mapping,
					       iocb->ki_pos - written,
					       iocb->ki_pos - 1);
		if (ret < 0)
			written = ret;

		if (!ret) {
			ret = FUNC15(osb->journal->j_journal);
			if (ret < 0)
				written = ret;
		}

		if (!ret)
			ret = FUNC6(file->f_mapping,
						      iocb->ki_pos - written,
						      iocb->ki_pos - 1);
	}

out:
	if (saved_ki_complete)
		FUNC29(&iocb->ki_complete, saved_ki_complete);

	if (rw_level != -1)
		FUNC24(inode, rw_level);

out_mutex:
	FUNC12(inode);

	if (written)
		ret = written;
	return ret;
}