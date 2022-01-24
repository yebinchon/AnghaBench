#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sigevent {int dummy; } ;
struct TYPE_2__ {int tv_sec; } ;
struct itimerspec {TYPE_1__ it_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_BOOTTIME_ALARM ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,struct itimerspec*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,char*,scalar_t__) ; 

void FUNC10(void)
{
	int power_state_fd;
	struct sigevent event = {};
	int timerfd;
	int err;
	struct itimerspec spec = {};

	if (FUNC1() != 0)
		FUNC3("Please run the test as root - Exiting.\n");

	power_state_fd = FUNC4("/sys/power/state", O_RDWR);
	if (power_state_fd < 0)
		FUNC2(
			"open(\"/sys/power/state\") failed %s)\n",
			FUNC5(errno));

	timerfd = FUNC7(CLOCK_BOOTTIME_ALARM, 0);
	if (timerfd < 0)
		FUNC2("timerfd_create() failed\n");

	spec.it_value.tv_sec = 5;
	err = FUNC8(timerfd, 0, &spec, NULL);
	if (err < 0)
		FUNC2("timerfd_settime() failed\n");

	if (FUNC9(power_state_fd, "mem", FUNC6("mem")) != FUNC6("mem"))
		FUNC2("Failed to enter Suspend state\n");

	FUNC0(timerfd);
	FUNC0(power_state_fd);
}