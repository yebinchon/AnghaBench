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
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {int should_dirty; int /*<<< orphan*/  async; TYPE_1__* iocb; } ;
struct TYPE_8__ {int /*<<< orphan*/  write_flags; } ;
struct TYPE_9__ {TYPE_3__ in; } ;
struct fuse_io_args {int /*<<< orphan*/  ap; TYPE_4__ write; struct fuse_io_priv* io; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {size_t max_write; size_t max_read; int /*<<< orphan*/  max_pages; } ;
struct file {struct fuse_file* private_data; TYPE_2__* f_mapping; } ;
typedef  size_t ssize_t ;
typedef  size_t pgoff_t ;
typedef  size_t loff_t ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_10__ {int /*<<< orphan*/  files; } ;
struct TYPE_7__ {struct inode* host; } ;
struct TYPE_6__ {struct file* ki_filp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSETID ; 
 size_t ENOMEM ; 
 int FUSE_DIO_CUSE ; 
 int FUSE_DIO_WRITE ; 
 int /*<<< orphan*/  FUSE_WRITE_KILL_PRIV ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* current ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iov_iter*,size_t*,int,unsigned int) ; 
 struct fuse_io_args* FUNC3 (struct fuse_io_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_io_args*) ; 
 scalar_t__ FUNC5 (struct inode*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC7 (struct fuse_io_args*,size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct fuse_io_args*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 size_t FUNC12 (struct iov_iter*) ; 
 unsigned int FUNC13 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct iov_iter*) ; 
 size_t FUNC15 (size_t,size_t) ; 

ssize_t FUNC16(struct fuse_io_priv *io, struct iov_iter *iter,
		       loff_t *ppos, int flags)
{
	int write = flags & FUSE_DIO_WRITE;
	int cuse = flags & FUSE_DIO_CUSE;
	struct file *file = io->iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = ff->fc;
	size_t nmax = write ? fc->max_write : fc->max_read;
	loff_t pos = *ppos;
	size_t count = FUNC12(iter);
	pgoff_t idx_from = pos >> PAGE_SHIFT;
	pgoff_t idx_to = (pos + count - 1) >> PAGE_SHIFT;
	ssize_t res = 0;
	int err = 0;
	struct fuse_io_args *ia;
	unsigned int max_pages;

	max_pages = FUNC13(iter, fc->max_pages);
	ia = FUNC3(io, max_pages);
	if (!ia)
		return -ENOMEM;

	ia->io = io;
	if (!cuse && FUNC5(inode, idx_from, idx_to)) {
		if (!write)
			FUNC10(inode);
		FUNC9(inode);
		if (!write)
			FUNC11(inode);
	}

	io->should_dirty = !write && FUNC14(iter);
	while (count) {
		ssize_t nres;
		fl_owner_t owner = current->files;
		size_t nbytes = FUNC15(count, nmax);

		err = FUNC2(&ia->ap, iter, &nbytes, write,
					  max_pages);
		if (err && !nbytes)
			break;

		if (write) {
			if (!FUNC1(CAP_FSETID))
				ia->write.in.write_flags |= FUSE_WRITE_KILL_PRIV;

			nres = FUNC8(ia, pos, nbytes, owner);
		} else {
			nres = FUNC7(ia, pos, nbytes, owner);
		}

		if (!io->async || nres < 0) {
			FUNC6(&ia->ap, io->should_dirty);
			FUNC4(ia);
		}
		ia = NULL;
		if (nres < 0) {
			err = nres;
			break;
		}
		FUNC0(nres > nbytes);

		count -= nres;
		res += nres;
		pos += nres;
		if (nres != nbytes)
			break;
		if (count) {
			max_pages = FUNC13(iter, fc->max_pages);
			ia = FUNC3(io, max_pages);
			if (!ia)
				break;
		}
	}
	if (ia)
		FUNC4(ia);
	if (res > 0)
		*ppos = pos;

	return res > 0 ? res : err;
}