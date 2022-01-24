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
 int /*<<< orphan*/  GPIOHANDLE_REQUEST_OUTPUT ; 
 int FUNC0 (int) ; 
 int FUNC1 (char const*,unsigned int*,unsigned int,int /*<<< orphan*/ ,struct gpiohandle_data*,int /*<<< orphan*/ ) ; 

int FUNC2(const char *device_name, unsigned int *lines,
		   unsigned int nlines, struct gpiohandle_data *data)
{
	int ret;

	ret = FUNC1(device_name, lines, nlines,
					   GPIOHANDLE_REQUEST_OUTPUT, data,
					   COMSUMER);
	if (ret < 0)
		return ret;

	return FUNC0(ret);
}