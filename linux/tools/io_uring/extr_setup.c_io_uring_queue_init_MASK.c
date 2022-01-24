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
struct io_uring_params {unsigned int flags; } ;
struct io_uring {int dummy; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct io_uring_params*,struct io_uring*) ; 
 int FUNC2 (unsigned int,struct io_uring_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct io_uring_params*,int /*<<< orphan*/ ,int) ; 

int FUNC4(unsigned entries, struct io_uring *ring, unsigned flags)
{
	struct io_uring_params p;
	int fd, ret;

	FUNC3(&p, 0, sizeof(p));
	p.flags = flags;

	fd = FUNC2(entries, &p);
	if (fd < 0)
		return fd;

	ret = FUNC1(fd, &p, ring);
	if (ret)
		FUNC0(fd);

	return ret;
}