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
struct kiocb {int ki_flags; int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ ssize_t ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/ * backing_dev_info; } ;
struct TYPE_3__ {scalar_t__ writeback_cache; } ;

/* Variables and functions */
 int IOCB_DIRECT ; 
 int PAGE_SHIFT ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC0 (struct file*) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (struct address_space*,int,int) ; 
 scalar_t__ FUNC3 (struct kiocb*,struct address_space*,struct iov_iter*,int) ; 
 scalar_t__ FUNC4 (struct inode*,struct file*) ; 
 scalar_t__ FUNC5 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC6 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC7 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC8 (struct kiocb*,scalar_t__) ; 
 TYPE_1__* FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct address_space*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC15(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct address_space *mapping = file->f_mapping;
	ssize_t written = 0;
	ssize_t written_buffered = 0;
	struct inode *inode = mapping->host;
	ssize_t err;
	loff_t endbyte = 0;

	if (FUNC9(inode)->writeback_cache) {
		/* Update size (EOF optimization) and mode (SUID clearing) */
		err = FUNC4(mapping->host, file);
		if (err)
			return err;

		return FUNC6(iocb, from);
	}

	FUNC10(inode);

	/* We can write back this queue in page reclaim */
	current->backing_dev_info = FUNC11(inode);

	err = FUNC7(iocb, from);
	if (err <= 0)
		goto out;

	err = FUNC0(file);
	if (err)
		goto out;

	err = FUNC1(file);
	if (err)
		goto out;

	if (iocb->ki_flags & IOCB_DIRECT) {
		loff_t pos = iocb->ki_pos;
		written = FUNC5(iocb, from);
		if (written < 0 || !FUNC14(from))
			goto out;

		pos += written;

		written_buffered = FUNC3(iocb, mapping, from, pos);
		if (written_buffered < 0) {
			err = written_buffered;
			goto out;
		}
		endbyte = pos + written_buffered - 1;

		err = FUNC2(file->f_mapping, pos,
						   endbyte);
		if (err)
			goto out;

		FUNC13(file->f_mapping,
					 pos >> PAGE_SHIFT,
					 endbyte >> PAGE_SHIFT);

		written += written_buffered;
		iocb->ki_pos = pos + written_buffered;
	} else {
		written = FUNC3(iocb, mapping, from, iocb->ki_pos);
		if (written >= 0)
			iocb->ki_pos += written;
	}
out:
	current->backing_dev_info = NULL;
	FUNC12(inode);
	if (written > 0)
		written = FUNC8(iocb, written);

	return written ? written : err;
}