#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kiocb {scalar_t__ ki_pos; int /*<<< orphan*/ * private; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_nlink; TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct ext4_inode_info {scalar_t__ i_disksize; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  get_block_t ;
struct TYPE_4__ {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DIO_LOCKING ; 
 int DIO_SKIP_HOLES ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 struct ext4_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  EXT4_STATE_DIO_UNWRITTEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct kiocb*,struct inode*,int /*<<< orphan*/ ,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * ext4_dio_get_block ; 
 int /*<<< orphan*/ * ext4_dio_get_block_overwrite ; 
 int /*<<< orphan*/ * ext4_dio_get_block_unwritten_async ; 
 int /*<<< orphan*/ * ext4_dio_get_block_unwritten_sync ; 
 int /*<<< orphan*/  ext4_end_io_dio ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 size_t FUNC22 (struct iov_iter*) ; 
 scalar_t__ FUNC23 (struct kiocb*) ; 
 scalar_t__ FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC25(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	struct ext4_inode_info *ei = FUNC1(inode);
	ssize_t ret;
	loff_t offset = iocb->ki_pos;
	size_t count = FUNC22(iter);
	int overwrite = 0;
	get_block_t *get_block_func = NULL;
	int dio_flags = 0;
	loff_t final_size = offset + count;
	int orphan = 0;
	handle_t *handle;

	if (final_size > inode->i_size || final_size > ei->i_disksize) {
		/* Credits for sb + inode write */
		handle = FUNC7(inode, EXT4_HT_INODE, 2);
		if (FUNC2(handle)) {
			ret = FUNC3(handle);
			goto out;
		}
		ret = FUNC10(handle, inode);
		if (ret) {
			FUNC8(handle);
			goto out;
		}
		orphan = 1;
		FUNC15(inode, inode->i_size);
		FUNC8(handle);
	}

	FUNC0(iocb->private == NULL);

	/*
	 * Make all waiters for direct IO properly wait also for extent
	 * conversion. This also disallows race between truncate() and
	 * overwrite DIO as i_dio_count needs to be incremented under i_mutex.
	 */
	FUNC18(inode);

	/* If we do a overwrite dio, i_mutex locking can be released */
	overwrite = *((int *)iocb->private);

	if (overwrite)
		FUNC21(inode);

	/*
	 * For extent mapped files we could direct write to holes and fallocate.
	 *
	 * Allocated blocks to fill the hole are marked as unwritten to prevent
	 * parallel buffered read to expose the stale data before DIO complete
	 * the data IO.
	 *
	 * As to previously fallocated extents, ext4 get_block will just simply
	 * mark the buffer mapped but still keep the extents unwritten.
	 *
	 * For non AIO case, we will convert those unwritten extents to written
	 * after return back from blockdev_direct_IO. That way we save us from
	 * allocating io_end structure and also the overhead of offloading
	 * the extent convertion to a workqueue.
	 *
	 * For async DIO, the conversion needs to be deferred when the
	 * IO is completed. The ext4 end_io callback function will be
	 * called to take care of the conversion work.  Here for async
	 * case, we allocate an io_end structure to hook to the iocb.
	 */
	iocb->private = NULL;
	if (overwrite)
		get_block_func = ext4_dio_get_block_overwrite;
	else if (!FUNC12(inode, EXT4_INODE_EXTENTS) ||
		   FUNC24(offset, FUNC16(inode)) >= inode->i_size) {
		get_block_func = ext4_dio_get_block;
		dio_flags = DIO_LOCKING | DIO_SKIP_HOLES;
	} else if (FUNC23(iocb)) {
		get_block_func = ext4_dio_get_block_unwritten_sync;
		dio_flags = DIO_LOCKING;
	} else {
		get_block_func = ext4_dio_get_block_unwritten_async;
		dio_flags = DIO_LOCKING;
	}
	ret = FUNC4(iocb, inode, inode->i_sb->s_bdev, iter,
				   get_block_func, ext4_end_io_dio, NULL,
				   dio_flags);

	if (ret > 0 && !overwrite && FUNC13(inode,
						EXT4_STATE_DIO_UNWRITTEN)) {
		int err;
		/*
		 * for non AIO case, since the IO is already
		 * completed, we could do the conversion right here
		 */
		err = FUNC6(NULL, inode,
						     offset, ret);
		if (err < 0)
			ret = err;
		FUNC5(inode, EXT4_STATE_DIO_UNWRITTEN);
	}

	FUNC19(inode);
	/* take i_mutex locking again if we do a ovewrite dio */
	if (overwrite)
		FUNC20(inode);

	if (ret < 0 && final_size > inode->i_size)
		FUNC14(inode);

	/* Handle extending of i_size after direct IO write */
	if (orphan) {
		int err;

		/* Credits for sb + inode write */
		handle = FUNC7(inode, EXT4_HT_INODE, 2);
		if (FUNC2(handle)) {
			/*
			 * We wrote the data but cannot extend
			 * i_size. Bail out. In async io case, we do
			 * not return error here because we have
			 * already submmitted the corresponding
			 * bio. Returning error here makes the caller
			 * think that this IO is done and failed
			 * resulting in race with bio's completion
			 * handler.
			 */
			if (!ret)
				ret = FUNC3(handle);
			if (inode->i_nlink)
				FUNC11(NULL, inode);

			goto out;
		}
		if (inode->i_nlink)
			FUNC11(handle, inode);
		if (ret > 0) {
			loff_t end = offset + ret;
			if (end > inode->i_size || end > ei->i_disksize) {
				FUNC15(inode, end);
				if (end > inode->i_size)
					FUNC17(inode, end);
				/*
				 * We're going to return a positive `ret'
				 * here due to non-zero-length I/O, so there's
				 * no way of reporting error returns from
				 * ext4_mark_inode_dirty() to userspace.  So
				 * ignore it.
				 */
				FUNC9(handle, inode);
			}
		}
		err = FUNC8(handle);
		if (ret == 0)
			ret = err;
	}
out:
	return ret;
}