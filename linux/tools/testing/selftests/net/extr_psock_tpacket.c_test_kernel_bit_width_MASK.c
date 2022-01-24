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
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	char in[512], *ptr;
	int num = 0, fd;
	ssize_t ret;

	fd = FUNC3("/proc/kallsyms", O_RDONLY);
	if (fd == -1) {
		FUNC4("open");
		FUNC1(1);
	}

	ret = FUNC5(fd, in, sizeof(in));
	if (ret <= 0) {
		FUNC4("read");
		FUNC1(1);
	}

	FUNC0(fd);

	ptr = in;
	while(!FUNC2(*ptr)) {
		num++;
		ptr++;
	}

	return num * 4;
}