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
struct kiocb {int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int /*<<< orphan*/  nr_segs; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mnt; TYPE_3__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef  int ssize_t ;
struct TYPE_8__ {scalar_t__ ip_blkno; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EIOCBQUEUED ; 
 int EOPNOTSUPP ; 
 int IOCB_DIRECT ; 
 int IOCB_NOWAIT ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct file*) ; 
 int FUNC3 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC8 (struct kiocb*,int) ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct file*,TYPE_3__*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC14(struct kiocb *iocb,
				   struct iov_iter *to)
{
	int ret = 0, rw_level = -1, lock_level = 0;
	struct file *filp = iocb->ki_filp;
	struct inode *inode = FUNC2(filp);
	int direct_io = iocb->ki_flags & IOCB_DIRECT ? 1 : 0;
	int nowait = iocb->ki_flags & IOCB_NOWAIT ? 1 : 0;

	FUNC13(inode, filp, filp->f_path.dentry,
			(unsigned long long)FUNC1(inode)->ip_blkno,
			filp->f_path.dentry->d_name.len,
			filp->f_path.dentry->d_name.name,
			to->nr_segs);	/* GRRRRR */


	if (!inode) {
		ret = -EINVAL;
		FUNC4(ret);
		goto bail;
	}

	if (!direct_io && nowait)
		return -EOPNOTSUPP;

	/*
	 * buffered reads protect themselves in ->readpage().  O_DIRECT reads
	 * need locks to protect pending reads from racing with truncate.
	 */
	if (direct_io) {
		if (nowait)
			ret = FUNC11(inode, 0);
		else
			ret = FUNC9(inode, 0);

		if (ret < 0) {
			if (ret != -EAGAIN)
				FUNC4(ret);
			goto bail;
		}
		rw_level = 0;
		/* communicate with ocfs2_dio_end_io */
		FUNC8(iocb, rw_level);
	}

	/*
	 * We're fine letting folks race truncates and extending
	 * writes with read across the cluster, just like they can
	 * locally. Hence no rw_lock during read.
	 *
	 * Take and drop the meta data lock to update inode fields
	 * like i_size. This allows the checks down below
	 * generic_file_read_iter() a chance of actually working.
	 */
	ret = FUNC5(inode, filp->f_path.mnt, &lock_level,
				     !nowait);
	if (ret < 0) {
		if (ret != -EAGAIN)
			FUNC4(ret);
		goto bail;
	}
	FUNC6(inode, lock_level);

	ret = FUNC3(iocb, to);
	FUNC12(ret);

	/* buffered aio wouldn't have proper lock coverage today */
	FUNC0(ret == -EIOCBQUEUED && !direct_io);

	/* see ocfs2_file_write_iter */
	if (ret == -EIOCBQUEUED || !FUNC7(iocb)) {
		rw_level = -1;
	}

bail:
	if (rw_level != -1)
		FUNC10(inode, rw_level);

	return ret;
}