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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int,void*,size_t) ; 
 scalar_t__ FUNC2 (int,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(bool is_read, int fd, void *buf, size_t n)
{
	void *buf_start = buf;
	size_t left = n;

	while (left) {
		/* buf must be treated as const if !is_read. */
		ssize_t ret = is_read ? FUNC1(fd, buf, left) :
					FUNC2(fd, buf, left);

		if (ret < 0 && errno == EINTR)
			continue;
		if (ret <= 0)
			return ret;

		left -= ret;
		buf  += ret;
	}

	FUNC0((size_t)(buf - buf_start) != n);
	return n;
}