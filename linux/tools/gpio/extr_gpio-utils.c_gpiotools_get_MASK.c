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
struct gpiohandle_data {int* values; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,unsigned int*,int,struct gpiohandle_data*) ; 

int FUNC1(const char *device_name, unsigned int line)
{
	struct gpiohandle_data data;
	unsigned int lines[] = {line};

	FUNC0(device_name, lines, 1, &data);
	return data.values[0];
}