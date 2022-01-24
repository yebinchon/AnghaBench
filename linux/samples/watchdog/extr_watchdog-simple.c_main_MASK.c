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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*,int) ; 

int FUNC6(void)
{
	int fd = FUNC2("/dev/watchdog", O_WRONLY);
	int ret = 0;
	if (fd == -1) {
		FUNC3("watchdog");
		FUNC1(EXIT_FAILURE);
	}
	while (1) {
		ret = FUNC5(fd, "\0", 1);
		if (ret != 1) {
			ret = -1;
			break;
		}
		FUNC4(10);
	}
	FUNC0(fd);
	return ret;
}