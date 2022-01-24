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
struct termios {int* c_cc; int /*<<< orphan*/  c_lflag; } ;
struct pollfd {int fd; int events; int revents; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  ICANON ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 size_t VMIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char const*,int) ; 
 int FUNC7 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (int,struct termios*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,struct termios*) ; 

int FUNC11(int argc, char **argv)
{
	int fd;
	const char *path = "/dev/uhid";
	struct pollfd pfds[2];
	int ret;
	struct termios state;

	ret = FUNC9(STDIN_FILENO, &state);
	if (ret) {
		FUNC4(stderr, "Cannot get tty state\n");
	} else {
		state.c_lflag &= ~ICANON;
		state.c_cc[VMIN] = 1;
		ret = FUNC10(STDIN_FILENO, TCSANOW, &state);
		if (ret)
			FUNC4(stderr, "Cannot set tty state\n");
	}

	if (argc >= 2) {
		if (!FUNC8(argv[1], "-h") || !FUNC8(argv[1], "--help")) {
			FUNC4(stderr, "Usage: %s [%s]\n", argv[0], path);
			return EXIT_SUCCESS;
		} else {
			path = argv[1];
		}
	}

	FUNC4(stderr, "Open uhid-cdev %s\n", path);
	fd = FUNC6(path, O_RDWR | O_CLOEXEC);
	if (fd < 0) {
		FUNC4(stderr, "Cannot open uhid-cdev %s: %m\n", path);
		return EXIT_FAILURE;
	}

	FUNC4(stderr, "Create uhid device\n");
	ret = FUNC1(fd);
	if (ret) {
		FUNC0(fd);
		return EXIT_FAILURE;
	}

	pfds[0].fd = STDIN_FILENO;
	pfds[0].events = POLLIN;
	pfds[1].fd = fd;
	pfds[1].events = POLLIN;

	FUNC4(stderr, "Press 'q' to quit...\n");
	while (1) {
		ret = FUNC7(pfds, 2, -1);
		if (ret < 0) {
			FUNC4(stderr, "Cannot poll for fds: %m\n");
			break;
		}
		if (pfds[0].revents & POLLHUP) {
			FUNC4(stderr, "Received HUP on stdin\n");
			break;
		}
		if (pfds[1].revents & POLLHUP) {
			FUNC4(stderr, "Received HUP on uhid-cdev\n");
			break;
		}

		if (pfds[0].revents & POLLIN) {
			ret = FUNC5(fd);
			if (ret)
				break;
		}
		if (pfds[1].revents & POLLIN) {
			ret = FUNC3(fd);
			if (ret)
				break;
		}
	}

	FUNC4(stderr, "Destroy uhid device\n");
	FUNC2(fd);
	return EXIT_SUCCESS;
}