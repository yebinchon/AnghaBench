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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(int argc, const char **argv)
{
	int	fd;

	if (argc != 1) {
		FUNC1(stderr, "hpet_open_close: device-name\n");
		return;
	}

	fd = FUNC2(argv[0], O_RDONLY);
	if (fd < 0)
		FUNC1(stderr, "hpet_open_close: open failed\n");
	else
		FUNC0(fd);

	return;
}