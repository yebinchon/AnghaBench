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
struct gpioline_info {char* name; char* label; int lines; int line_offset; char* consumer; scalar_t__ flags; } ;
struct gpiochip_info {char* name; char* label; int lines; int line_offset; char* consumer; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  linfo ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GPIO_GET_CHIPINFO_IOCTL ; 
 int /*<<< orphan*/  GPIO_GET_LINEINFO_IOCTL ; 
 int FUNC0 (char**,char*,char const*) ; 
 int FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct gpioline_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct gpioline_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC9(const char *device_name)
{
	struct gpiochip_info cinfo;
	char *chrdev_name;
	int fd;
	int ret;
	int i;

	ret = FUNC0(&chrdev_name, "/dev/%s", device_name);
	if (ret < 0)
		return -ENOMEM;

	fd = FUNC6(chrdev_name, 0);
	if (fd == -1) {
		ret = -errno;
		FUNC2(stderr, "Failed to open %s\n", chrdev_name);
		goto exit_close_error;
	}

	/* Inspect this GPIO chip */
	ret = FUNC4(fd, GPIO_GET_CHIPINFO_IOCTL, &cinfo);
	if (ret == -1) {
		ret = -errno;
		FUNC7("Failed to issue CHIPINFO IOCTL\n");
		goto exit_close_error;
	}
	FUNC2(stdout, "GPIO chip: %s, \"%s\", %u GPIO lines\n",
		cinfo.name, cinfo.label, cinfo.lines);

	/* Loop over the lines and print info */
	for (i = 0; i < cinfo.lines; i++) {
		struct gpioline_info linfo;

		FUNC5(&linfo, 0, sizeof(linfo));
		linfo.line_offset = i;

		ret = FUNC4(fd, GPIO_GET_LINEINFO_IOCTL, &linfo);
		if (ret == -1) {
			ret = -errno;
			FUNC7("Failed to issue LINEINFO IOCTL\n");
			goto exit_close_error;
		}
		FUNC2(stdout, "\tline %2d:", linfo.line_offset);
		if (linfo.name[0])
			FUNC2(stdout, " \"%s\"", linfo.name);
		else
			FUNC2(stdout, " unnamed");
		if (linfo.consumer[0])
			FUNC2(stdout, " \"%s\"", linfo.consumer);
		else
			FUNC2(stdout, " unused");
		if (linfo.flags) {
			FUNC2(stdout, " [");
			FUNC8(linfo.flags);
			FUNC2(stdout, "]");
		}
		FUNC2(stdout, "\n");

	}

exit_close_error:
	if (FUNC1(fd) == -1)
		FUNC7("Failed to close GPIO character device file");
	FUNC3(chrdev_name);
	return ret;
}