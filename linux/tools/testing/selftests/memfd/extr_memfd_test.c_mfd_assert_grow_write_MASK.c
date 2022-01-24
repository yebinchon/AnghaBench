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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ hugetlbfs_test ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int mfd_def_size ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int fd)
{
	static char *buf;
	ssize_t l;

	/* hugetlbfs does not support write */
	if (hugetlbfs_test)
		return;

	buf = FUNC1(mfd_def_size * 8);
	if (!buf) {
		FUNC3("malloc(%zu) failed: %m\n", mfd_def_size * 8);
		FUNC0();
	}

	l = FUNC4(fd, buf, mfd_def_size * 8, 0);
	if (l != (mfd_def_size * 8)) {
		FUNC3("pwrite() failed: %m\n");
		FUNC0();
	}

	FUNC2(fd, mfd_def_size * 8);
}