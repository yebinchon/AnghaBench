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
struct kiocb {int ki_pos; int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/ * backing_dev_info; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int IOCB_APPEND ; 
 int IOCB_DIRECT ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int PAGE_SHIFT ; 
 TYPE_1__* current ; 
 struct inode* FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (struct address_space*,int,int) ; 
 scalar_t__ FUNC5 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC6 (struct kiocb*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_holder*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  gfs2_iomap_ops ; 
 scalar_t__ FUNC10 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct address_space*,int,int) ; 
 scalar_t__ FUNC16 (struct kiocb*,struct iov_iter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct iov_iter*) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static ssize_t FUNC20(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = FUNC1(file);
	struct gfs2_inode *ip = FUNC0(inode);
	ssize_t written = 0, ret;

	ret = FUNC10(ip);
	if (ret)
		return ret;

	FUNC11(file, iocb->ki_pos, FUNC17(from));

	if (iocb->ki_flags & IOCB_APPEND) {
		struct gfs2_holder gh;

		ret = FUNC9(ip->i_gl, LM_ST_SHARED, 0, &gh);
		if (ret)
			return ret;
		FUNC8(&gh);
	}

	FUNC12(inode);
	ret = FUNC5(iocb, from);
	if (ret <= 0)
		goto out;

	/* We can write back this queue in page reclaim */
	current->backing_dev_info = FUNC13(inode);

	ret = FUNC2(file);
	if (ret)
		goto out2;

	ret = FUNC3(file);
	if (ret)
		goto out2;

	if (iocb->ki_flags & IOCB_DIRECT) {
		struct address_space *mapping = file->f_mapping;
		loff_t pos, endbyte;
		ssize_t buffered;

		written = FUNC7(iocb, from);
		if (written < 0 || !FUNC17(from))
			goto out2;

		ret = FUNC16(iocb, from, &gfs2_iomap_ops);
		if (FUNC19(ret < 0))
			goto out2;
		buffered = ret;

		/*
		 * We need to ensure that the page cache pages are written to
		 * disk and invalidated to preserve the expected O_DIRECT
		 * semantics.
		 */
		pos = iocb->ki_pos;
		endbyte = pos + buffered - 1;
		ret = FUNC4(mapping, pos, endbyte);
		if (!ret) {
			iocb->ki_pos += buffered;
			written += buffered;
			FUNC15(mapping,
						 pos >> PAGE_SHIFT,
						 endbyte >> PAGE_SHIFT);
		} else {
			/*
			 * We don't know how much we wrote, so just return
			 * the number of bytes which were direct-written
			 */
		}
	} else {
		ret = FUNC16(iocb, from, &gfs2_iomap_ops);
		if (FUNC18(ret > 0))
			iocb->ki_pos += ret;
	}

out2:
	current->backing_dev_info = NULL;
out:
	FUNC14(inode);
	if (FUNC18(ret > 0)) {
		/* Handle various SYNC-type writes */
		ret = FUNC6(iocb, ret);
	}
	return written ? written : ret;
}