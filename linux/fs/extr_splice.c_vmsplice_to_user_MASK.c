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
struct TYPE_2__ {struct iov_iter* data; } ;
struct splice_desc {unsigned int flags; scalar_t__ total_len; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EBADF ; 
 long FUNC0 (struct pipe_inode_info*,struct splice_desc*,int /*<<< orphan*/ ) ; 
 struct pipe_inode_info* FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  pipe_to_user ; 
 int /*<<< orphan*/  FUNC4 (struct pipe_inode_info*) ; 

__attribute__((used)) static long FUNC5(struct file *file, struct iov_iter *iter,
			     unsigned int flags)
{
	struct pipe_inode_info *pipe = FUNC1(file);
	struct splice_desc sd = {
		.total_len = FUNC2(iter),
		.flags = flags,
		.u.data = iter
	};
	long ret = 0;

	if (!pipe)
		return -EBADF;

	if (sd.total_len) {
		FUNC3(pipe);
		ret = FUNC0(pipe, &sd, pipe_to_user);
		FUNC4(pipe);
	}

	return ret;
}