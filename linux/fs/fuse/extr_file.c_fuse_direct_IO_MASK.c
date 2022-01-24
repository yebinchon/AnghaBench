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
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {int reqs; int bytes; int write; int async; int blocking; int /*<<< orphan*/  refcnt; int /*<<< orphan*/ * done; struct kiocb* iocb; scalar_t__ err; scalar_t__ offset; scalar_t__ size; int /*<<< orphan*/  lock; } ;
struct fuse_file {TYPE_2__* fc; } ;
struct file {TYPE_1__* f_mapping; struct fuse_file* private_data; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {int async_dio; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EIOCBQUEUED ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUSE_DIO_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ READ ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC1 (struct fuse_io_priv*,struct iov_iter*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_io_priv*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct fuse_io_priv*,struct iov_iter*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 scalar_t__ FUNC5 (struct fuse_io_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  fuse_io_release ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 size_t FUNC10 (struct iov_iter*) ; 
 scalar_t__ FUNC11 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC12 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct kiocb*) ; 
 struct fuse_io_priv* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC20(struct kiocb *iocb, struct iov_iter *iter)
{
	FUNC0(wait);
	ssize_t ret = 0;
	struct file *file = iocb->ki_filp;
	struct fuse_file *ff = file->private_data;
	bool async_dio = ff->fc->async_dio;
	loff_t pos = 0;
	struct inode *inode;
	loff_t i_size;
	size_t count = FUNC10(iter);
	loff_t offset = iocb->ki_pos;
	struct fuse_io_priv *io;

	pos = offset;
	inode = file->f_mapping->host;
	i_size = FUNC9(inode);

	if ((FUNC11(iter) == READ) && (offset > i_size))
		return 0;

	/* optimization for short read */
	if (async_dio && FUNC11(iter) != WRITE && offset + count > i_size) {
		if (offset >= i_size)
			return 0;
		FUNC12(iter, FUNC7(ff->fc, i_size - offset));
		count = FUNC10(iter);
	}

	io = FUNC14(sizeof(struct fuse_io_priv), GFP_KERNEL);
	if (!io)
		return -ENOMEM;
	FUNC18(&io->lock);
	FUNC16(&io->refcnt);
	io->reqs = 1;
	io->bytes = -1;
	io->size = 0;
	io->offset = offset;
	io->write = (FUNC11(iter) == WRITE);
	io->err = 0;
	/*
	 * By default, we want to optimize all I/Os with async request
	 * submission to the client filesystem if supported.
	 */
	io->async = async_dio;
	io->iocb = iocb;
	io->blocking = FUNC13(iocb);

	/*
	 * We cannot asynchronously extend the size of a file.
	 * In such case the aio will behave exactly like sync io.
	 */
	if ((offset + count > i_size) && FUNC11(iter) == WRITE)
		io->blocking = true;

	if (io->async && io->blocking) {
		/*
		 * Additional reference to keep io around after
		 * calling fuse_aio_complete()
		 */
		FUNC15(&io->refcnt);
		io->done = &wait;
	}

	if (FUNC11(iter) == WRITE) {
		ret = FUNC3(io, iter, &pos, FUSE_DIO_WRITE);
		FUNC6(inode);
	} else {
		ret = FUNC1(io, iter, &pos);
	}

	if (io->async) {
		bool blocking = io->blocking;

		FUNC2(io, ret < 0 ? ret : 0, -1);

		/* we have a non-extending, async request, so return */
		if (!blocking)
			return -EIOCBQUEUED;

		FUNC19(&wait);
		ret = FUNC5(io);
	}

	FUNC17(&io->refcnt, fuse_io_release);

	if (FUNC11(iter) == WRITE) {
		if (ret > 0)
			FUNC8(inode, pos);
		else if (ret < 0 && offset + count > i_size)
			FUNC4(file);
	}

	return ret;
}