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

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(int fd_in)
{
	int r, fd;
	char path[100];

	FUNC3(path, "/proc/self/fd/%d", fd_in);

	fd = FUNC1(path, O_RDWR);
	if (fd < 0) {
		FUNC2("re-open of existing fd %d failed\n", fd_in);
		FUNC0();
	}

	return fd;
}