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
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC9(int argc, char **argv)
{
	int opt;
	char media_device[256];
	int count = 0;
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
			FUNC8(media_device, optarg, sizeof(media_device) - 1);
			media_device[sizeof(media_device)-1] = '\0';
			break;
		default:
			FUNC6("Usage: %s [-d </dev/mediaX>]\n", argv[0]);
			FUNC0(-1);
		}
	}

	if (FUNC2() != 0)
		FUNC4("Please run the test as root - Exiting.\n");

	/* Open Media device and keep it open */
	fd = FUNC5(media_device, O_RDWR);
	if (fd == -1) {
		FUNC6("Media Device open errno %s\n", FUNC7(errno));
		FUNC0(-1);
	}

	ret = FUNC3(fd, MEDIA_IOC_DEVICE_INFO, &mdi);
	if (ret < 0)
		FUNC6("Media Device Info errno %s\n", FUNC7(errno));
	else
		FUNC6("Media device model %s driver %s\n",
			mdi.model, mdi.driver);
}