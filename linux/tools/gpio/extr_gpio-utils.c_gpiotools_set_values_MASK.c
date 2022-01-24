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
struct gpiohandle_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOHANDLE_SET_LINE_VALUES_IOCTL ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int FUNC1 (int const,int /*<<< orphan*/ ,struct gpiohandle_data*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 

int FUNC3(const int fd, struct gpiohandle_data *data)
{
	int ret;

	ret = FUNC1(fd, GPIOHANDLE_SET_LINE_VALUES_IOCTL, data);
	if (ret == -1) {
		ret = -errno;
		FUNC0(stderr, "Failed to issue %s (%d), %s\n",
			"GPIOHANDLE_SET_LINE_VALUES_IOCTL", ret,
			FUNC2(errno));
	}

	return ret;
}