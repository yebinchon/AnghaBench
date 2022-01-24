#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kiocb {size_t ki_pos; int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_mapping; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {scalar_t__ nrpages; TYPE_1__* a_ops; struct inode* host; } ;
typedef  int ssize_t ;
typedef  size_t pgoff_t ;
typedef  size_t loff_t ;
struct TYPE_2__ {int (* direct_IO ) (struct kiocb*,struct iov_iter*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int IOCB_NOWAIT ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int FUNC2 (struct address_space*,size_t,size_t) ; 
 size_t FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,size_t) ; 
 int FUNC5 (struct address_space*,size_t,size_t) ; 
 size_t FUNC6 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC7 (struct iov_iter*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct kiocb*,struct iov_iter*) ; 

ssize_t
FUNC10(struct kiocb *iocb, struct iov_iter *from)
{
	struct file	*file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	struct inode	*inode = mapping->host;
	loff_t		pos = iocb->ki_pos;
	ssize_t		written;
	size_t		write_len;
	pgoff_t		end;

	write_len = FUNC6(from);
	end = (pos + write_len - 1) >> PAGE_SHIFT;

	if (iocb->ki_flags & IOCB_NOWAIT) {
		/* If there are pages to writeback, return */
		if (FUNC1(inode->i_mapping, pos,
					   pos + write_len - 1))
			return -EAGAIN;
	} else {
		written = FUNC2(mapping, pos,
							pos + write_len - 1);
		if (written)
			goto out;
	}

	/*
	 * After a write we want buffered reads to be sure to go to disk to get
	 * the new data.  We invalidate clean cached page from the region we're
	 * about to write.  We do this *before* the write so that we can return
	 * without clobbering -EIOCBQUEUED from ->direct_IO().
	 */
	written = FUNC5(mapping,
					pos >> PAGE_SHIFT, end);
	/*
	 * If a page can not be invalidated, return 0 to fall back
	 * to buffered write.
	 */
	if (written) {
		if (written == -EBUSY)
			return 0;
		goto out;
	}

	written = mapping->a_ops->direct_IO(iocb, from);

	/*
	 * Finally, try again to invalidate clean pages which might have been
	 * cached by non-direct readahead, or faulted in by get_user_pages()
	 * if the source of the write was an mmap'ed region of the file
	 * we're writing.  Either one is a pretty crazy thing to do,
	 * so we don't support it 100%.  If this invalidation
	 * fails, tough, the write still worked...
	 *
	 * Most of the time we do not need this since dio_complete() will do
	 * the invalidation for us. However there are some file systems that
	 * do not end up with dio_complete() being called, so let's not break
	 * them by removing it completely
	 */
	if (mapping->nrpages)
		FUNC5(mapping,
					pos >> PAGE_SHIFT, end);

	if (written > 0) {
		pos += written;
		write_len -= written;
		if (pos > FUNC3(inode) && !FUNC0(inode->i_mode)) {
			FUNC4(inode, pos);
			FUNC8(inode);
		}
		iocb->ki_pos = pos;
	}
	FUNC7(from, write_len - FUNC6(from));
out:
	return written;
}