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
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int O_CLOEXEC ; 
 int O_DIRECT ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct file**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(int *fd, struct file **files, int flags)
{
	int error;
	int fdw, fdr;

	if (flags & ~(O_CLOEXEC | O_NONBLOCK | O_DIRECT))
		return -EINVAL;

	error = FUNC1(files, flags);
	if (error)
		return error;

	error = FUNC3(flags);
	if (error < 0)
		goto err_read_pipe;
	fdr = error;

	error = FUNC3(flags);
	if (error < 0)
		goto err_fdr;
	fdw = error;

	FUNC0(fdr, fdw);
	fd[0] = fdr;
	fd[1] = fdw;
	return 0;

 err_fdr:
	FUNC4(fdr);
 err_read_pipe:
	FUNC2(files[0]);
	FUNC2(files[1]);
	return error;
}