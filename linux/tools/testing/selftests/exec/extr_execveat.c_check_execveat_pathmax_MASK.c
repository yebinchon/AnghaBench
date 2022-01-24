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

/* Variables and functions */
 int /*<<< orphan*/  AT_EMPTY_PATH ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int XX_DIR_LEN ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* longpath ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (int) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(int root_dfd, const char *src, int is_script)
{
	int fail = 0;
	int ii, count, len;
	char longname[XX_DIR_LEN + 1];
	int fd;

	if (*longpath == '\0') {
		/* Create a filename close to PATH_MAX in length */
		char *cwd = FUNC4(NULL, 0);

		if (!cwd) {
			FUNC8("Failed to getcwd(), errno=%d (%s)\n",
			       errno, FUNC11(errno));
			return 2;
		}
		FUNC10(longpath, cwd);
		FUNC9(longpath, "/");
		FUNC5(longname, 'x', XX_DIR_LEN - 1);
		longname[XX_DIR_LEN - 1] = '/';
		longname[XX_DIR_LEN] = '\0';
		count = (PATH_MAX - 3 - FUNC12(cwd)) / XX_DIR_LEN;
		for (ii = 0; ii < count; ii++) {
			FUNC9(longpath, longname);
			FUNC6(longpath, 0755);
		}
		len = (PATH_MAX - 3 - FUNC12(cwd)) - (count * XX_DIR_LEN);
		if (len <= 0)
			len = 1;
		FUNC5(longname, 'y', len);
		longname[len] = '\0';
		FUNC9(longpath, longname);
		FUNC3(cwd);
	}
	FUNC2(src, longpath);

	/*
	 * Execute as a pre-opened file descriptor, which works whether this is
	 * a script or not (because the interpreter sees a filename like
	 * "/dev/fd/20").
	 */
	fd = FUNC7(longpath, O_RDONLY);
	if (fd > 0) {
		FUNC8("Invoke copy of '%s' via filename of length %zu:\n",
			src, FUNC12(longpath));
		fail += FUNC0(fd, "", AT_EMPTY_PATH);
	} else {
		FUNC8("Failed to open length %zu filename, errno=%d (%s)\n",
			FUNC12(longpath), errno, FUNC11(errno));
		fail++;
	}

	/*
	 * Execute as a long pathname relative to "/".  If this is a script,
	 * the interpreter will launch but fail to open the script because its
	 * name ("/dev/fd/5/xxx....") is bigger than PATH_MAX.
	 *
	 * The failure code is usually 127 (POSIX: "If a command is not found,
	 * the exit status shall be 127."), but some systems give 126 (POSIX:
	 * "If the command name is found, but it is not an executable utility,
	 * the exit status shall be 126."), so allow either.
	 */
	if (is_script)
		fail += FUNC1(root_dfd, longpath + 1, 0,
						  127, 126);
	else
		fail += FUNC0(root_dfd, longpath + 1, 0);

	return fail;
}