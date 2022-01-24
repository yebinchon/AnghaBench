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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int KSFT_SKIP ; 
 int O_CLOEXEC ; 
 int O_NOCTTY ; 
 int O_RDWR ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  TIOCGPTPEER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char*,int) ; 
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(char *ptmx, char *expected_procfd_contents)
{
	int ret;
	int master = -1, slave = -1, fret = -1;

	master = FUNC6(ptmx, O_RDWR | O_NOCTTY | O_CLOEXEC);
	if (master < 0) {
		FUNC3(stderr, "Failed to open \"%s\": %s\n", ptmx,
			FUNC8(errno));
		return -1;
	}

	/*
	 * grantpt() makes assumptions about /dev/pts/ so ignore it. It's also
	 * not really needed.
	 */
	ret = FUNC11(master);
	if (ret < 0) {
		FUNC3(stderr, "Failed to unlock terminal\n");
		goto do_cleanup;
	}

#ifdef TIOCGPTPEER
	slave = ioctl(master, TIOCGPTPEER, O_RDWR | O_NOCTTY | O_CLOEXEC);
#endif
	if (slave < 0) {
		if (errno == EINVAL) {
			FUNC3(stderr, "TIOCGPTPEER is not supported. "
					"Skipping test.\n");
			fret = KSFT_SKIP;
		} else {
			FUNC3(stderr,
				"Failed to perform TIOCGPTPEER ioctl\n");
			fret = EXIT_FAILURE;
		}
		goto do_cleanup;
	}

	pid_t pid = FUNC2();
	if (pid < 0)
		goto do_cleanup;

	if (pid == 0) {
		char buf[4096];

		ret = FUNC5(slave);
		if (ret < 0) {
			FUNC3(stderr, "Failed to setup terminal\n");
			FUNC0(EXIT_FAILURE);
		}

		ret = FUNC7(STDIN_FILENO, buf, sizeof(buf));
		if (ret < 0) {
			FUNC3(stderr, "Failed to retrieve pathname of pts "
					"slave file descriptor\n");
			FUNC0(EXIT_FAILURE);
		}

		if (FUNC10(expected_procfd_contents, buf,
			    FUNC9(expected_procfd_contents)) != 0) {
			FUNC3(stderr, "Received invalid contents for "
					"\"/proc/<pid>/fd/%d\" symlink: %s\n",
					STDIN_FILENO, buf);
			FUNC0(-1);
		}

		FUNC3(stderr, "Contents of \"/proc/<pid>/fd/%d\" "
				"symlink are valid: %s\n", STDIN_FILENO, buf);

		FUNC0(EXIT_SUCCESS);
	}

	ret = FUNC12(pid);
	if (ret < 0)
		goto do_cleanup;

	fret = EXIT_SUCCESS;

do_cleanup:
	if (master >= 0)
		FUNC1(master);
	if (slave >= 0)
		FUNC1(slave);

	return fret;
}