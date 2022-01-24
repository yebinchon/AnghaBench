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
struct media_device_info {char* model; char* driver; } ;
typedef  int /*<<< orphan*/  media_device ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_IOC_DEVICE_INFO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct media_device_info*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(int argc, char **argv)
{
	int opt;
	char media_device[256];
	int count;
	struct media_device_info mdi;
	int ret;
	int fd;

	if (argc < 2) {
		FUNC6("Usage: %s [-d </dev/mediaX>]\n", argv[0]);
		FUNC0(-1);
	}

	/* Process arguments */
	while ((opt = FUNC1(argc, argv, "d:")) != -1) {
		switch (opt) {
		case 'd':
			FUNC11(media_device, optarg, sizeof(media_device) - 1);
			media_device[sizeof(media_device)-1] = '\0';
			break;
		default:
			FUNC6("Usage: %s [-d </dev/mediaX>]\n", argv[0]);
			FUNC0(-1);
		}
	}

	if (FUNC2() != 0)
		FUNC4("Please run the test as root - Exiting.\n");

	/* Generate random number of interations */
	FUNC9((unsigned int) FUNC12(NULL));
	count = FUNC7();

	/* Open Media device and keep it open */
	fd = FUNC5(media_device, O_RDWR);
	if (fd == -1) {
		FUNC6("Media Device open errno %s\n", FUNC10(errno));
		FUNC0(-1);
	}

	FUNC6("\nNote:\n"
	       "While test is running, remove the device and\n"
	       "ensure there are no use after free errors and\n"
	       "other Oops in the dmesg. Enable KaSan kernel\n"
	       "config option for use-after-free error detection.\n\n");

	FUNC6("Running test for %d iterations\n", count);

	while (count > 0) {
		ret = FUNC3(fd, MEDIA_IOC_DEVICE_INFO, &mdi);
		if (ret < 0)
			FUNC6("Media Device Info errno %s\n", FUNC10(errno));
		else
			FUNC6("Media device model %s driver %s - count %d\n",
				mdi.model, mdi.driver, count);
		FUNC8(10);
		count--;
	}
}