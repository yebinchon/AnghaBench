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
struct gpiohandle_request {unsigned int* lineoffsets; unsigned int flags; unsigned int lines; int fd; int /*<<< orphan*/  default_values; int /*<<< orphan*/  consumer_label; } ;
struct gpiohandle_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int GPIOHANDLE_REQUEST_OUTPUT ; 
 int /*<<< orphan*/  GPIO_GET_LINEHANDLE_IOCTL ; 
 int FUNC0 (char**,char*,char const*) ; 
 int FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct gpiohandle_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct gpiohandle_data*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC9 (int) ; 

int FUNC10(const char *device_name, unsigned int *lines,
				 unsigned int nlines, unsigned int flag,
				 struct gpiohandle_data *data,
				 const char *consumer_label)
{
	struct gpiohandle_request req;
	char *chrdev_name;
	int fd;
	int i;
	int ret;

	ret = FUNC0(&chrdev_name, "/dev/%s", device_name);
	if (ret < 0)
		return -ENOMEM;

	fd = FUNC6(chrdev_name, 0);
	if (fd == -1) {
		ret = -errno;
		FUNC2(stderr, "Failed to open %s, %s\n",
			chrdev_name, FUNC9(errno));
		goto exit_close_error;
	}

	for (i = 0; i < nlines; i++)
		req.lineoffsets[i] = lines[i];

	req.flags = flag;
	FUNC8(req.consumer_label, consumer_label);
	req.lines = nlines;
	if (flag & GPIOHANDLE_REQUEST_OUTPUT)
		FUNC5(req.default_values, data, sizeof(req.default_values));

	ret = FUNC4(fd, GPIO_GET_LINEHANDLE_IOCTL, &req);
	if (ret == -1) {
		ret = -errno;
		FUNC2(stderr, "Failed to issue %s (%d), %s\n",
			"GPIO_GET_LINEHANDLE_IOCTL", ret, FUNC9(errno));
	}

exit_close_error:
	if (FUNC1(fd) == -1)
		FUNC7("Failed to close GPIO character device file");
	FUNC3(chrdev_name);
	return ret < 0 ? ret : req.fd;
}