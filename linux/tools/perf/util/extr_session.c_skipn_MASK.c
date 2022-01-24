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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int fd, off_t n)
{
	char buf[4096];
	ssize_t ret;

	while (n > 0) {
		ret = FUNC1(fd, buf, FUNC0(n, (off_t)sizeof(buf)));
		if (ret <= 0)
			return ret;
		n -= ret;
	}

	return 0;
}