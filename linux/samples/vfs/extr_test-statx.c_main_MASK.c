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
typedef  int /*<<< orphan*/  stx ;
struct statx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int AT_NO_AUTOMOUNT ; 
 int AT_STATX_DONT_SYNC ; 
 int AT_STATX_FORCE_SYNC ; 
 int AT_STATX_SYNC_TYPE ; 
 int AT_SYMLINK_NOFOLLOW ; 
 unsigned int STATX_ALL ; 
 unsigned int STATX_BASIC_STATS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct statx*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct statx*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,unsigned int,struct statx*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

int FUNC8(int argc, char **argv)
{
	struct statx stx;
	int ret, raw = 0, atflag = AT_SYMLINK_NOFOLLOW;

	unsigned int mask = STATX_ALL;

	for (argv++; *argv; argv++) {
		if (FUNC7(*argv, "-F") == 0) {
			atflag &= ~AT_STATX_SYNC_TYPE;
			atflag |= AT_STATX_FORCE_SYNC;
			continue;
		}
		if (FUNC7(*argv, "-D") == 0) {
			atflag &= ~AT_STATX_SYNC_TYPE;
			atflag |= AT_STATX_DONT_SYNC;
			continue;
		}
		if (FUNC7(*argv, "-L") == 0) {
			atflag &= ~AT_SYMLINK_NOFOLLOW;
			continue;
		}
		if (FUNC7(*argv, "-O") == 0) {
			mask &= ~STATX_BASIC_STATS;
			continue;
		}
		if (FUNC7(*argv, "-A") == 0) {
			atflag |= AT_NO_AUTOMOUNT;
			continue;
		}
		if (FUNC7(*argv, "-R") == 0) {
			raw = 1;
			continue;
		}

		FUNC3(&stx, 0xbf, sizeof(stx));
		ret = FUNC6(AT_FDCWD, *argv, atflag, mask, &stx);
		FUNC5("statx(%s) = %d\n", *argv, ret);
		if (ret < 0) {
			FUNC4(*argv);
			FUNC2(1);
		}

		if (raw)
			FUNC0((unsigned long long *)&stx, 0, sizeof(stx));

		FUNC1(&stx);
	}
	return 0;
}