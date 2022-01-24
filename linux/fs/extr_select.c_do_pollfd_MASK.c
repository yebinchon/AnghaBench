#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int fd; int /*<<< orphan*/  revents; int /*<<< orphan*/  events; } ;
struct fd {int /*<<< orphan*/  file; } ;
struct TYPE_4__ {int _key; } ;
typedef  TYPE_1__ poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLNVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct fd FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fd) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static inline __poll_t FUNC5(struct pollfd *pollfd, poll_table *pwait,
				     bool *can_busy_poll,
				     __poll_t busy_flag)
{
	int fd = pollfd->fd;
	__poll_t mask = 0, filter;
	struct fd f;

	if (fd < 0)
		goto out;
	mask = EPOLLNVAL;
	f = FUNC1(fd);
	if (!f.file)
		goto out;

	/* userland u16 ->events contains POLL... bitmap */
	filter = FUNC0(pollfd->events) | EPOLLERR | EPOLLHUP;
	pwait->_key = filter | busy_flag;
	mask = FUNC4(f.file, pwait);
	if (mask & busy_flag)
		*can_busy_poll = true;
	mask &= filter;		/* Mask out unneeded events. */
	FUNC2(f);

out:
	/* ... and so does ->revents */
	pollfd->revents = FUNC3(mask);
	return mask;
}