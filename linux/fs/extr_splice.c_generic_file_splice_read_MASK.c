#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pipe_inode_info {int dummy; } ;
struct kiocb {int /*<<< orphan*/  ki_pos; } ;
struct iov_iter {int idx; scalar_t__ iov_offset; } ;
struct file {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int /*<<< orphan*/  READ ; 
 int FUNC0 (struct file*,struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*,int /*<<< orphan*/ ,struct pipe_inode_info*,size_t) ; 

ssize_t FUNC5(struct file *in, loff_t *ppos,
				 struct pipe_inode_info *pipe, size_t len,
				 unsigned int flags)
{
	struct iov_iter to;
	struct kiocb kiocb;
	int idx, ret;

	FUNC4(&to, READ, pipe, len);
	idx = to.idx;
	FUNC2(&kiocb, in);
	kiocb.ki_pos = *ppos;
	ret = FUNC0(in, &kiocb, &to);
	if (ret > 0) {
		*ppos = kiocb.ki_pos;
		FUNC1(in);
	} else if (ret < 0) {
		to.idx = idx;
		to.iov_offset = 0;
		FUNC3(&to, 0); /* to free what was emitted */
		/*
		 * callers of ->splice_read() expect -EAGAIN on
		 * "can't put anything in there", rather than -EFAULT.
		 */
		if (ret == -EFAULT)
			ret = -EAGAIN;
	}

	return ret;
}