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
struct kiocb {int ki_flags; int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/ * backing_dev_info; } ;

/* Variables and functions */
 int IOCB_DIRECT ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int PAGE_SHIFT ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct address_space*,int,int) ; 
 scalar_t__ FUNC4 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC5 (struct file*,struct iov_iter*,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iov_iter*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 

ssize_t FUNC11(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct address_space * mapping = file->f_mapping;
	struct inode 	*inode = mapping->host;
	ssize_t		written = 0;
	ssize_t		err;
	ssize_t		status;

	/* We can write back this queue in page reclaim */
	current->backing_dev_info = FUNC6(inode);
	err = FUNC1(file);
	if (err)
		goto out;

	err = FUNC2(file);
	if (err)
		goto out;

	if (iocb->ki_flags & IOCB_DIRECT) {
		loff_t pos, endbyte;

		written = FUNC4(iocb, from);
		/*
		 * If the write stopped short of completing, fall back to
		 * buffered writes.  Some filesystems do this for writes to
		 * holes, for example.  For DAX files, a buffered write will
		 * not succeed (even if it did, DAX does not handle dirty
		 * page-cache pages correctly).
		 */
		if (written < 0 || !FUNC8(from) || FUNC0(inode))
			goto out;

		status = FUNC5(file, from, pos = iocb->ki_pos);
		/*
		 * If generic_perform_write() returned a synchronous error
		 * then we want to return the number of bytes which were
		 * direct-written, or the error code if that was zero.  Note
		 * that this differs from normal direct-io semantics, which
		 * will return -EFOO even if some bytes were written.
		 */
		if (FUNC10(status < 0)) {
			err = status;
			goto out;
		}
		/*
		 * We need to ensure that the page cache pages are written to
		 * disk and invalidated to preserve the expected O_DIRECT
		 * semantics.
		 */
		endbyte = pos + status - 1;
		err = FUNC3(mapping, pos, endbyte);
		if (err == 0) {
			iocb->ki_pos = endbyte + 1;
			written += status;
			FUNC7(mapping,
						 pos >> PAGE_SHIFT,
						 endbyte >> PAGE_SHIFT);
		} else {
			/*
			 * We don't know how much we wrote, so just return
			 * the number of bytes which were direct-written
			 */
		}
	} else {
		written = FUNC5(file, from, iocb->ki_pos);
		if (FUNC9(written > 0))
			iocb->ki_pos += written;
	}
out:
	current->backing_dev_info = NULL;
	return written ? written : err;
}