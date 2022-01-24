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
typedef  int /*<<< orphan*/  uleds_dev ;
struct uleds_user_dev {int max_brightness; int /*<<< orphan*/  name; } ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  brightness ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  LED_MAX_NAME_SIZE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,struct uleds_user_dev*,int) ; 

int FUNC9(int argc, char const *argv[])
{
	struct uleds_user_dev uleds_dev;
	int fd, ret;
	int brightness;
	struct timespec ts;

	if (argc != 2) {
		FUNC2(stderr, "Requires <device-name> argument\n");
		return 1;
	}

	FUNC7(uleds_dev.name, argv[1], LED_MAX_NAME_SIZE);
	uleds_dev.max_brightness = 100;

	fd = FUNC3("/dev/uleds", O_RDWR);
	if (fd == -1) {
		FUNC4("Failed to open /dev/uleds");
		return 1;
	}

	ret = FUNC8(fd, &uleds_dev, sizeof(uleds_dev));
	if (ret == -1) {
		FUNC4("Failed to write to /dev/uleds");
		FUNC1(fd);
		return 1;
	}

	while (1) {
		ret = FUNC6(fd, &brightness, sizeof(brightness));
		if (ret == -1) {
			FUNC4("Failed to read from /dev/uleds");
			FUNC1(fd);
			return 1;
		}
		FUNC0(CLOCK_MONOTONIC, &ts);
		FUNC5("[%ld.%09ld] %u\n", ts.tv_sec, ts.tv_nsec, brightness);
	}

	FUNC1(fd);

	return 0;
}