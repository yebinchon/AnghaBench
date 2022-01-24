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
struct eventpoll {struct file* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EPOLL_CLOEXEC ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int FUNC2 (struct file*) ; 
 struct file* FUNC3 (char*,int /*<<< orphan*/ *,struct eventpoll*,int) ; 
 int FUNC4 (struct eventpoll**) ; 
 int /*<<< orphan*/  FUNC5 (struct eventpoll*) ; 
 int /*<<< orphan*/  eventpoll_fops ; 
 int /*<<< orphan*/  FUNC6 (int,struct file*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(int flags)
{
	int error, fd;
	struct eventpoll *ep = NULL;
	struct file *file;

	/* Check the EPOLL_* constant for consistency.  */
	FUNC0(EPOLL_CLOEXEC != O_CLOEXEC);

	if (flags & ~EPOLL_CLOEXEC)
		return -EINVAL;
	/*
	 * Create the internal data structure ("struct eventpoll").
	 */
	error = FUNC4(&ep);
	if (error < 0)
		return error;
	/*
	 * Creates all the items needed to setup an eventpoll file. That is,
	 * a file structure and a free file descriptor.
	 */
	fd = FUNC7(O_RDWR | (flags & O_CLOEXEC));
	if (fd < 0) {
		error = fd;
		goto out_free_ep;
	}
	file = FUNC3("[eventpoll]", &eventpoll_fops, ep,
				 O_RDWR | (flags & O_CLOEXEC));
	if (FUNC1(file)) {
		error = FUNC2(file);
		goto out_free_fd;
	}
	ep->file = file;
	FUNC6(fd, file);
	return fd;

out_free_fd:
	FUNC8(fd);
out_free_ep:
	FUNC5(ep);
	return error;
}