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
struct fuse_out_header {int dummy; } ;
struct fuse_copy_state {int dummy; } ;
struct fuse_args {int out_numargs; int /*<<< orphan*/  page_zeroing; struct fuse_arg* out_args; int /*<<< orphan*/  out_pages; int /*<<< orphan*/  out_argvar; } ;
struct fuse_arg {unsigned int size; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct fuse_copy_state*,int,int /*<<< orphan*/ ,struct fuse_arg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct fuse_arg*) ; 

__attribute__((used)) static int FUNC2(struct fuse_copy_state *cs, struct fuse_args *args,
			 unsigned nbytes)
{
	unsigned reqsize = sizeof(struct fuse_out_header);

	reqsize += FUNC1(args->out_numargs, args->out_args);

	if (reqsize < nbytes || (reqsize > nbytes && !args->out_argvar))
		return -EINVAL;
	else if (reqsize > nbytes) {
		struct fuse_arg *lastarg = &args->out_args[args->out_numargs-1];
		unsigned diffsize = reqsize - nbytes;

		if (diffsize > lastarg->size)
			return -EINVAL;
		lastarg->size -= diffsize;
	}
	return FUNC0(cs, args->out_numargs, args->out_pages,
			      args->out_args, args->page_zeroing);
}