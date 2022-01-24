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
typedef  int /*<<< orphan*/  swirr ;
struct gpiohandle_data {int* values; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOHANDLE_REQUEST_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,struct gpiohandle_data*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,unsigned int*,int,int /*<<< orphan*/ ,struct gpiohandle_data*,char*) ; 
 int FUNC5 (int,struct gpiohandle_data*) ; 
 int /*<<< orphan*/  FUNC6 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC8(const char *device_name, unsigned int *lines, int nlines,
		  unsigned int loops)
{
	struct gpiohandle_data data;
	char swirr[] = "-\\|/";
	int fd;
	int ret;
	int i, j;
	unsigned int iteration = 0;

	FUNC6(&data.values, 0, sizeof(data.values));
	ret = FUNC4(device_name, lines, nlines,
					   GPIOHANDLE_REQUEST_OUTPUT, &data,
					   "gpio-hammer");
	if (ret < 0)
		goto exit_error;
	else
		fd = ret;

	ret = FUNC2(fd, &data);
	if (ret < 0)
		goto exit_close_error;

	FUNC1(stdout, "Hammer lines [");
	for (i = 0; i < nlines; i++) {
		FUNC1(stdout, "%d", lines[i]);
		if (i != (nlines - 1))
			FUNC1(stdout, ", ");
	}
	FUNC1(stdout, "] on %s, initial states: [", device_name);
	for (i = 0; i < nlines; i++) {
		FUNC1(stdout, "%d", data.values[i]);
		if (i != (nlines - 1))
			FUNC1(stdout, ", ");
	}
	FUNC1(stdout, "]\n");

	/* Hammertime! */
	j = 0;
	while (1) {
		/* Invert all lines so we blink */
		for (i = 0; i < nlines; i++)
			data.values[i] = !data.values[i];

		ret = FUNC5(fd, &data);
		if (ret < 0)
			goto exit_close_error;

		/* Re-read values to get status */
		ret = FUNC2(fd, &data);
		if (ret < 0)
			goto exit_close_error;

		FUNC1(stdout, "[%c] ", swirr[j]);
		j++;
		if (j == sizeof(swirr)-1)
			j = 0;

		FUNC1(stdout, "[");
		for (i = 0; i < nlines; i++) {
			FUNC1(stdout, "%d: %d", lines[i], data.values[i]);
			if (i != (nlines - 1))
				FUNC1(stdout, ", ");
		}
		FUNC1(stdout, "]\r");
		FUNC0(stdout);
		FUNC7(1);
		iteration++;
		if (loops && iteration == loops)
			break;
	}
	FUNC1(stdout, "\n");
	ret = 0;

exit_close_error:
	FUNC3(fd);
exit_error:
	return ret;
}