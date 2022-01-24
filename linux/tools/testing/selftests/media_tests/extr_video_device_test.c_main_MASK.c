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
typedef  int /*<<< orphan*/  video_dev ;
struct v4l2_tuner {char* driver; int type; int rangelow; int rangehigh; } ;
struct v4l2_capability {char* driver; int type; int rangelow; int rangehigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  VIDIOC_G_TUNER ; 
 int /*<<< orphan*/  VIDIOC_QUERYCAP ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(int argc, char **argv)
{
	int opt;
	char video_dev[256];
	int count;
	struct v4l2_tuner vtuner;
	struct v4l2_capability vcap;
	int ret;
	int fd;

	if (argc < 2) {
		FUNC4("Usage: %s [-d </dev/videoX>]\n", argv[0]);
		FUNC0(-1);
	}

	/* Process arguments */
	while ((opt = FUNC1(argc, argv, "d:")) != -1) {
		switch (opt) {
		case 'd':
			FUNC9(video_dev, optarg, sizeof(video_dev) - 1);
			video_dev[sizeof(video_dev)-1] = '\0';
			break;
		default:
			FUNC4("Usage: %s [-d </dev/videoX>]\n", argv[0]);
			FUNC0(-1);
		}
	}

	/* Generate random number of interations */
	FUNC7((unsigned int) FUNC10(NULL));
	count = FUNC5();

	/* Open Video device and keep it open */
	fd = FUNC3(video_dev, O_RDWR);
	if (fd == -1) {
		FUNC4("Video Device open errno %s\n", FUNC8(errno));
		FUNC0(-1);
	}

	FUNC4("\nNote:\n"
	       "While test is running, remove the device or unbind\n"
	       "driver and ensure there are no use after free errors\n"
	       "and other Oops in the dmesg. When possible, enable KaSan\n"
	       "kernel config option for use-after-free error detection.\n\n");

	while (count > 0) {
		ret = FUNC2(fd, VIDIOC_QUERYCAP, &vcap);
		if (ret < 0)
			FUNC4("VIDIOC_QUERYCAP errno %s\n", FUNC8(errno));
		else
			FUNC4("Video device driver %s\n", vcap.driver);

		ret = FUNC2(fd, VIDIOC_G_TUNER, &vtuner);
		if (ret < 0)
			FUNC4("VIDIOC_G_TUNER, errno %s\n", FUNC8(errno));
		else
			FUNC4("type %d rangelow %d rangehigh %d\n",
				vtuner.type, vtuner.rangelow, vtuner.rangehigh);
		FUNC6(10);
		count--;
	}
}