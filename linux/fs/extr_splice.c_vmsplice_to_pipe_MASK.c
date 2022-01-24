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
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EBADF ; 
 unsigned int PIPE_BUF_FLAG_GIFT ; 
 unsigned int SPLICE_F_GIFT ; 
 struct pipe_inode_info* FUNC0 (struct file*) ; 
 long FUNC1 (struct iov_iter*,struct pipe_inode_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe_inode_info*) ; 
 long FUNC4 (struct pipe_inode_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct pipe_inode_info*) ; 

__attribute__((used)) static long FUNC6(struct file *file, struct iov_iter *iter,
			     unsigned int flags)
{
	struct pipe_inode_info *pipe;
	long ret = 0;
	unsigned buf_flag = 0;

	if (flags & SPLICE_F_GIFT)
		buf_flag = PIPE_BUF_FLAG_GIFT;

	pipe = FUNC0(file);
	if (!pipe)
		return -EBADF;

	FUNC2(pipe);
	ret = FUNC4(pipe, flags);
	if (!ret)
		ret = FUNC1(iter, pipe, buf_flag);
	FUNC3(pipe);
	if (ret > 0)
		FUNC5(pipe);
	return ret;
}