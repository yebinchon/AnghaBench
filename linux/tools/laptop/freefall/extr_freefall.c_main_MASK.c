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
struct stat {int dummy; } ;
struct sched_param {int /*<<< orphan*/  sched_priority; } ;
typedef  int /*<<< orphan*/  count ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int EINVAL ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_LOCAL1 ; 
 int LOG_NDELAY ; 
 int LOG_PID ; 
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  app_name ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ignore_me ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int noled ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(int argc, char **argv)
{
	int fd, ret;
	struct stat st;
	struct sched_param param;

	if (argc == 1)
		ret = FUNC17("/dev/sda");
	else if (argc == 2)
		ret = FUNC17(argv[1]);
	else
		ret = -EINVAL;

	if (ret || !FUNC20()) {
		FUNC5(stderr, "usage: %s <device> (default: /dev/sda)\n",
				argv[0]);
		FUNC4(1);
	}

	fd = FUNC9("/dev/freefall", O_RDONLY);
	if (fd < 0) {
		FUNC11("/dev/freefall");
		return EXIT_FAILURE;
	}

	if (FUNC19("/sys/class/leds/hp::hddprotect/brightness", &st))
		noled = 1;

	if (FUNC3(0, 0) != 0) {
		FUNC11("daemon");
		return EXIT_FAILURE;
	}

	FUNC10(app_name, LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL1);

	param.sched_priority = FUNC14(SCHED_FIFO);
	FUNC15(0, SCHED_FIFO, &param);
	FUNC7(MCL_CURRENT|MCL_FUTURE);

	FUNC18(SIGALRM, ignore_me);

	for (;;) {
		unsigned char count;

		ret = FUNC13(fd, &count, sizeof(count));
		FUNC0(0);
		if ((ret == -1) && (errno == EINTR)) {
			/* Alarm expired, time to unpark the heads */
			continue;
		}

		if (ret != sizeof(count)) {
			FUNC11("read");
			break;
		}

		FUNC12(21);
		FUNC16(1);
		if (1 || FUNC8() || FUNC6())
			FUNC0(2);
		else
			FUNC0(20);
	}

	FUNC2();
	FUNC1(fd);
	return EXIT_SUCCESS;
}