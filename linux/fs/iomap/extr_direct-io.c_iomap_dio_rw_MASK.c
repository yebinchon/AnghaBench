#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kiocb {scalar_t__ ki_pos; int ki_flags; int /*<<< orphan*/  private; int /*<<< orphan*/  ki_cookie; TYPE_3__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct iomap_ops {int dummy; } ;
struct iomap_dio_ops {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * cookie; int /*<<< orphan*/ * last_queue; int /*<<< orphan*/  waiter; struct iov_iter* iter; } ;
struct iomap_dio {scalar_t__ i_size; int flags; int wait_for_completion; TYPE_1__ submit; int /*<<< orphan*/  ref; scalar_t__ error; struct iomap_dio_ops const* dops; scalar_t__ size; struct kiocb* iocb; } ;
struct inode {TYPE_2__* i_sb; int /*<<< orphan*/  i_rwsem; } ;
struct blk_plug {int dummy; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_7__ {struct address_space* f_mapping; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_dio_done_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/ * BLK_QC_T_NONE ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EIOCBQUEUED ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ENOTBLK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOCB_DSYNC ; 
 int IOCB_HIPRI ; 
 int IOCB_NOWAIT ; 
 int IOCB_SYNC ; 
 int IOMAP_DIO_DIRTY ; 
 int IOMAP_DIO_NEED_SYNC ; 
 int IOMAP_DIO_WRITE ; 
 int IOMAP_DIO_WRITE_FUA ; 
 unsigned int IOMAP_DIRECT ; 
 unsigned int IOMAP_NOWAIT ; 
 unsigned int IOMAP_WRITE ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct blk_plug*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 struct inode* FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (struct address_space*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (struct address_space*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (struct address_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (struct inode*,scalar_t__,size_t,unsigned int,struct iomap_ops const*,struct iomap_dio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iomap_dio_actor ; 
 scalar_t__ FUNC17 (struct iomap_dio*) ; 
 int /*<<< orphan*/  FUNC18 (struct iomap_dio*,scalar_t__) ; 
 size_t FUNC19 (struct iov_iter*) ; 
 scalar_t__ FUNC20 (struct iov_iter*) ; 
 int FUNC21 (struct kiocb*) ; 
 scalar_t__ FUNC22 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC23 (struct iomap_dio*) ; 
 struct iomap_dio* FUNC24 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 

ssize_t
FUNC28(struct kiocb *iocb, struct iov_iter *iter,
		const struct iomap_ops *ops, const struct iomap_dio_ops *dops)
{
	struct address_space *mapping = iocb->ki_filp->f_mapping;
	struct inode *inode = FUNC9(iocb->ki_filp);
	size_t count = FUNC19(iter);
	loff_t pos = iocb->ki_pos, start = pos;
	loff_t end = iocb->ki_pos + count - 1, ret = 0;
	unsigned int flags = IOMAP_DIRECT;
	bool wait_for_completion = FUNC21(iocb);
	struct blk_plug plug;
	struct iomap_dio *dio;

	FUNC25(&inode->i_rwsem);

	if (!count)
		return 0;

	dio = FUNC24(sizeof(*dio), GFP_KERNEL);
	if (!dio)
		return -ENOMEM;

	dio->iocb = iocb;
	FUNC4(&dio->ref, 1);
	dio->size = 0;
	dio->i_size = FUNC12(inode);
	dio->dops = dops;
	dio->error = 0;
	dio->flags = 0;

	dio->submit.iter = iter;
	dio->submit.waiter = current;
	dio->submit.cookie = BLK_QC_T_NONE;
	dio->submit.last_queue = NULL;

	if (FUNC20(iter) == READ) {
		if (pos >= dio->i_size)
			goto out_free_dio;

		if (FUNC22(iter) && FUNC20(iter) == READ)
			dio->flags |= IOMAP_DIO_DIRTY;
	} else {
		flags |= IOMAP_WRITE;
		dio->flags |= IOMAP_DIO_WRITE;

		/* for data sync or sync, we need sync completion processing */
		if (iocb->ki_flags & IOCB_DSYNC)
			dio->flags |= IOMAP_DIO_NEED_SYNC;

		/*
		 * For datasync only writes, we optimistically try using FUA for
		 * this IO.  Any non-FUA write that occurs will clear this flag,
		 * hence we know before completion whether a cache flush is
		 * necessary.
		 */
		if ((iocb->ki_flags & (IOCB_DSYNC | IOCB_SYNC)) == IOCB_DSYNC)
			dio->flags |= IOMAP_DIO_WRITE_FUA;
	}

	if (iocb->ki_flags & IOCB_NOWAIT) {
		if (FUNC10(mapping, start, end)) {
			ret = -EAGAIN;
			goto out_free_dio;
		}
		flags |= IOMAP_NOWAIT;
	}

	ret = FUNC11(mapping, start, end);
	if (ret)
		goto out_free_dio;

	/*
	 * Try to invalidate cache pages for the range we're direct
	 * writing.  If this invalidation fails, tough, the write will
	 * still work, but racing two incompatible write paths is a
	 * pretty crazy thing to do, so we don't support it 100%.
	 */
	ret = FUNC14(mapping,
			start >> PAGE_SHIFT, end >> PAGE_SHIFT);
	if (ret)
		FUNC8(iocb->ki_filp);
	ret = 0;

	if (FUNC20(iter) == WRITE && !wait_for_completion &&
	    !inode->i_sb->s_dio_done_wq) {
		ret = FUNC26(inode->i_sb);
		if (ret < 0)
			goto out_free_dio;
	}

	FUNC13(inode);

	FUNC7(&plug);
	do {
		ret = FUNC16(inode, pos, count, flags, ops, dio,
				iomap_dio_actor);
		if (ret <= 0) {
			/* magic error code to fall back to buffered I/O */
			if (ret == -ENOTBLK) {
				wait_for_completion = true;
				ret = 0;
			}
			break;
		}
		pos += ret;

		if (FUNC20(iter) == READ && pos >= dio->i_size)
			break;
	} while ((count = FUNC19(iter)) > 0);
	FUNC5(&plug);

	if (ret < 0)
		FUNC18(dio, ret);

	/*
	 * If all the writes we issued were FUA, we don't need to flush the
	 * cache on IO completion. Clear the sync flag for this case.
	 */
	if (dio->flags & IOMAP_DIO_WRITE_FUA)
		dio->flags &= ~IOMAP_DIO_NEED_SYNC;

	FUNC1(iocb->ki_cookie, dio->submit.cookie);
	FUNC1(iocb->private, dio->submit.last_queue);

	/*
	 * We are about to drop our additional submission reference, which
	 * might be the last reference to the dio.  There are three three
	 * different ways we can progress here:
	 *
	 *  (a) If this is the last reference we will always complete and free
	 *	the dio ourselves.
	 *  (b) If this is not the last reference, and we serve an asynchronous
	 *	iocb, we must never touch the dio after the decrement, the
	 *	I/O completion handler will complete and free it.
	 *  (c) If this is not the last reference, but we serve a synchronous
	 *	iocb, the I/O completion handler will wake us up on the drop
	 *	of the final reference, and we will complete and free it here
	 *	after we got woken by the I/O completion handler.
	 */
	dio->wait_for_completion = wait_for_completion;
	if (!FUNC3(&dio->ref)) {
		if (!wait_for_completion)
			return -EIOCBQUEUED;

		for (;;) {
			FUNC27(TASK_UNINTERRUPTIBLE);
			if (!FUNC0(dio->submit.waiter))
				break;

			if (!(iocb->ki_flags & IOCB_HIPRI) ||
			    !dio->submit.last_queue ||
			    !FUNC6(dio->submit.last_queue,
					 dio->submit.cookie, true))
				FUNC15();
		}
		FUNC2(TASK_RUNNING);
	}

	return FUNC17(dio);

out_free_dio:
	FUNC23(dio);
	return ret;
}