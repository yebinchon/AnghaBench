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
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SIGINT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ender ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(int argc, char **argv)
{
    int fd;
    char *disk = 0;
    int settle_time = 60;

    /* Parse the simple command-line */
    if (argc == 2)
	disk = argv[1];
    else if (argc == 4) {
	settle_time = FUNC0(argv[2]);
	disk = argv[3];
    } else
	FUNC10();

    if (!(fd = FUNC4(disk, O_RDONLY|O_NONBLOCK))) {
	FUNC5("Can't open %s, because: %s\n", disk, FUNC9(errno));
	FUNC2(-1);
    }

    if (settle_time) {
	FUNC5("Waiting %d seconds for the system to settle down to "
	       "'normal'\n", settle_time);
	FUNC8(settle_time);
    } else
	FUNC6("Not waiting for system to settle down");

    FUNC7(SIGINT, ender);

    FUNC3(fd);

    FUNC1(fd);

    return 0;
}