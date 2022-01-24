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
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_DEFERRED ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_holder*) ; 
 scalar_t__ FUNC2 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  gfs2_iomap_ops ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct kiocb*,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC8(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	struct gfs2_inode *ip = FUNC0(inode);
	size_t len = FUNC7(from);
	loff_t offset = iocb->ki_pos;
	struct gfs2_holder gh;
	ssize_t ret;

	/*
	 * Deferred lock, even if its a write, since we do no allocation on
	 * this path. All we need to change is the atime, and this lock mode
	 * ensures that other nodes have flushed their buffered read caches
	 * (i.e. their page cache entries for this inode). We do not,
	 * unfortunately, have the option of only flushing a range like the
	 * VFS does.
	 */
	FUNC3(ip->i_gl, LM_ST_DEFERRED, 0, &gh);
	ret = FUNC2(&gh);
	if (ret)
		goto out_uninit;

	/* Silently fall back to buffered I/O when writing beyond EOF */
	if (offset + len > FUNC5(&ip->i_inode))
		goto out;

	ret = FUNC6(iocb, from, &gfs2_iomap_ops, NULL);

out:
	FUNC1(&gh);
out_uninit:
	FUNC4(&gh);
	return ret;
}