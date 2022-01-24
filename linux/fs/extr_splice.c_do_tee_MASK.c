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
struct file {int f_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int O_NONBLOCK ; 
 unsigned int SPLICE_F_NONBLOCK ; 
 struct pipe_inode_info* FUNC0 (struct file*) ; 
 int FUNC1 (struct pipe_inode_info*,unsigned int) ; 
 int FUNC2 (struct pipe_inode_info*,struct pipe_inode_info*,size_t,unsigned int) ; 
 int FUNC3 (struct pipe_inode_info*,unsigned int) ; 

__attribute__((used)) static long FUNC4(struct file *in, struct file *out, size_t len,
		   unsigned int flags)
{
	struct pipe_inode_info *ipipe = FUNC0(in);
	struct pipe_inode_info *opipe = FUNC0(out);
	int ret = -EINVAL;

	/*
	 * Duplicate the contents of ipipe to opipe without actually
	 * copying the data.
	 */
	if (ipipe && opipe && ipipe != opipe) {
		if ((in->f_flags | out->f_flags) & O_NONBLOCK)
			flags |= SPLICE_F_NONBLOCK;

		/*
		 * Keep going, unless we encounter an error. The ipipe/opipe
		 * ordering doesn't really matter.
		 */
		ret = FUNC1(ipipe, flags);
		if (!ret) {
			ret = FUNC3(opipe, flags);
			if (!ret)
				ret = FUNC2(ipipe, opipe, len, flags);
		}
	}

	return ret;
}