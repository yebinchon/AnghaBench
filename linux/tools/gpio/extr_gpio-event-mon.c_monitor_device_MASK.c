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
typedef  void* uint32_t ;
struct gpiohandle_data {unsigned int lineoffset; int fd; int* values; int /*<<< orphan*/  consumer_label; void* eventflags; void* handleflags; } ;
struct gpioevent_request {unsigned int lineoffset; int fd; int* values; int /*<<< orphan*/  consumer_label; void* eventflags; void* handleflags; } ;
struct gpioevent_data {int id; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
#define  GPIOEVENT_EVENT_FALLING_EDGE 129 
#define  GPIOEVENT_EVENT_RISING_EDGE 128 
 int /*<<< orphan*/  GPIOHANDLE_GET_LINE_VALUES_IOCTL ; 
 int /*<<< orphan*/  GPIO_GET_LINEEVENT_IOCTL ; 
 int FUNC0 (char**,char*,char const*) ; 
 int FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct gpiohandle_data*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,struct gpioevent_data*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9(const char *device_name,
		   unsigned int line,
		   uint32_t handleflags,
		   uint32_t eventflags,
		   unsigned int loops)
{
	struct gpioevent_request req;
	struct gpiohandle_data data;
	char *chrdev_name;
	int fd;
	int ret;
	int i = 0;

	ret = FUNC0(&chrdev_name, "/dev/%s", device_name);
	if (ret < 0)
		return -ENOMEM;

	fd = FUNC5(chrdev_name, 0);
	if (fd == -1) {
		ret = -errno;
		FUNC2(stderr, "Failed to open %s\n", chrdev_name);
		goto exit_close_error;
	}

	req.lineoffset = line;
	req.handleflags = handleflags;
	req.eventflags = eventflags;
	FUNC8(req.consumer_label, "gpio-event-mon");

	ret = FUNC4(fd, GPIO_GET_LINEEVENT_IOCTL, &req);
	if (ret == -1) {
		ret = -errno;
		FUNC2(stderr, "Failed to issue GET EVENT "
			"IOCTL (%d)\n",
			ret);
		goto exit_close_error;
	}

	/* Read initial states */
	ret = FUNC4(req.fd, GPIOHANDLE_GET_LINE_VALUES_IOCTL, &data);
	if (ret == -1) {
		ret = -errno;
		FUNC2(stderr, "Failed to issue GPIOHANDLE GET LINE "
			"VALUES IOCTL (%d)\n",
			ret);
		goto exit_close_error;
	}

	FUNC2(stdout, "Monitoring line %d on %s\n", line, device_name);
	FUNC2(stdout, "Initial line value: %d\n", data.values[0]);

	while (1) {
		struct gpioevent_data event;

		ret = FUNC7(req.fd, &event, sizeof(event));
		if (ret == -1) {
			if (errno == -EAGAIN) {
				FUNC2(stderr, "nothing available\n");
				continue;
			} else {
				ret = -errno;
				FUNC2(stderr, "Failed to read event (%d)\n",
					ret);
				break;
			}
		}

		if (ret != sizeof(event)) {
			FUNC2(stderr, "Reading event failed\n");
			ret = -EIO;
			break;
		}
		FUNC2(stdout, "GPIO EVENT %d: ", event.timestamp);
		switch (event.id) {
		case GPIOEVENT_EVENT_RISING_EDGE:
			FUNC2(stdout, "rising edge");
			break;
		case GPIOEVENT_EVENT_FALLING_EDGE:
			FUNC2(stdout, "falling edge");
			break;
		default:
			FUNC2(stdout, "unknown event");
		}
		FUNC2(stdout, "\n");

		i++;
		if (i == loops)
			break;
	}

exit_close_error:
	if (FUNC1(fd) == -1)
		FUNC6("Failed to close GPIO character device file");
	FUNC3(chrdev_name);
	return ret;
}