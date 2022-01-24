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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  HDIO_DRIVE_CMD ; 
 unsigned char WIN_CHECKPOWERMODE1 ; 
 unsigned char WIN_CHECKPOWERMODE2 ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(int fd)
{
    unsigned char args[4] = {WIN_CHECKPOWERMODE1,0,0,0};
    int state;

    if (FUNC1(fd, HDIO_DRIVE_CMD, &args)
	&& (args[0] = WIN_CHECKPOWERMODE2) /* try again with 0x98 */
	&& FUNC1(fd, HDIO_DRIVE_CMD, &args)) {
	if (errno != EIO || args[0] != 0 || args[1] != 0) {
	    state = -1; /* "unknown"; */
	} else
	    state = 0; /* "sleeping"; */
    } else {
	state = (args[2] == 255) ? 1 : 0;
    }
    FUNC0(FUNC2(" drive state is:  %d\n", state));

    return state;
}