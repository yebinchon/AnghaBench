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
 int /*<<< orphan*/  COMSUMER ; 
 int /*<<< orphan*/  GPIOHANDLE_REQUEST_INPUT ; 
 int FUNC0 (int,struct gpiohandle_data*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (char const*,unsigned int*,unsigned int,int /*<<< orphan*/ ,struct gpiohandle_data*,int /*<<< orphan*/ ) ; 

int FUNC3(const char *device_name, unsigned int *lines,
		   unsigned int nlines, struct gpiohandle_data *data)
{
	int fd;
	int ret;
	int ret_close;

	ret = FUNC2(device_name, lines, nlines,
					   GPIOHANDLE_REQUEST_INPUT, data,
					   COMSUMER);
	if (ret < 0)
		return ret;

	fd = ret;
	ret = FUNC0(fd, data);
	ret_close = FUNC1(fd);
	return ret < 0 ? ret : ret_close;
}