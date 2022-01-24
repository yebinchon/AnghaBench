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
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(int argc, char *argv[])
{
	int fd = FUNC2("/dev/urandom", O_RDONLY);
	int count = 4;

	if (fd < 0)
		return 1;

	if (argc == 2)
		count = FUNC0(argv[1]);

	FUNC3(fd, count);

	FUNC1(fd);
	return 0;
}