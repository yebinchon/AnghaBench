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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,int) ; 

int FUNC4(void)
{
	int i, fd;
	const char *drmstr = "/dev/dri/card";

	fd = -1;
	for (i = 0; i < 16; i++) {
		char name[80];

		FUNC3(name, "%s%u", drmstr, i);

		fd = FUNC2(name, O_RDWR);
		if (fd < 0)
			continue;

		if (FUNC0(fd)) {
			FUNC1(fd);
			continue;
		} else {
			break;
		}

	}
	return fd;
}