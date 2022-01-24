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
struct iio_event_data {int dummy; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IIO_GET_EVENT_FD_IOCTL ; 
 int FUNC0 (char**,char*,int) ; 
 int FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_event_data*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int FUNC10 (int,struct iio_event_data*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char const*) ; 

int FUNC12(int argc, char **argv)
{
	struct iio_event_data event;
	const char *device_name;
	char *chrdev_name;
	int ret;
	int dev_num;
	int fd, event_fd;

	if (argc <= 1) {
		FUNC3(stderr, "Usage: %s <device_name>\n", argv[0]);
		return -1;
	}

	device_name = argv[1];

	dev_num = FUNC2(device_name, "iio:device");
	if (dev_num >= 0) {
		FUNC9("Found IIO device with name %s with device number %d\n",
		       device_name, dev_num);
		ret = FUNC0(&chrdev_name, "/dev/iio:device%d", dev_num);
		if (ret < 0)
			return -ENOMEM;
	} else {
		/*
		 * If we can't find an IIO device by name assume device_name is
		 * an IIO chrdev
		 */
		chrdev_name = FUNC11(device_name);
		if (!chrdev_name)
			return -ENOMEM;
	}

	fd = FUNC6(chrdev_name, 0);
	if (fd == -1) {
		ret = -errno;
		FUNC3(stderr, "Failed to open %s\n", chrdev_name);
		goto error_free_chrdev_name;
	}

	ret = FUNC5(fd, IIO_GET_EVENT_FD_IOCTL, &event_fd);
	if (ret == -1 || event_fd == -1) {
		ret = -errno;
		if (ret == -ENODEV)
			FUNC3(stderr,
				"This device does not support events\n");
		else
			FUNC3(stderr, "Failed to retrieve event fd\n");
		if (FUNC1(fd) == -1)
			FUNC7("Failed to close character device file");

		goto error_free_chrdev_name;
	}

	if (FUNC1(fd) == -1)  {
		ret = -errno;
		goto error_free_chrdev_name;
	}

	while (true) {
		ret = FUNC10(event_fd, &event, sizeof(event));
		if (ret == -1) {
			if (errno == EAGAIN) {
				FUNC3(stderr, "nothing available\n");
				continue;
			} else {
				ret = -errno;
				FUNC7("Failed to read event from device");
				break;
			}
		}

		if (ret != sizeof(event)) {
			FUNC3(stderr, "Reading event failed!\n");
			ret = -EIO;
			break;
		}

		FUNC8(&event);
	}

	if (FUNC1(event_fd) == -1)
		FUNC7("Failed to close event file");

error_free_chrdev_name:
	FUNC4(chrdev_name);

	return ret;
}