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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*,char*,int*,int*,int*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static int
FUNC8(unsigned int *puint)
{
	ssize_t len;
	size_t line_len = 0;
	char *ptr, *line = NULL;
	int version, patchlevel, sublevel, err;
	FILE *vsig;

	if (!puint)
		return 0;

	vsig = FUNC1("/proc/version_signature", "r");
	if (!vsig) {
		FUNC4("Open /proc/version_signature failed: %s\n",
			 FUNC6(errno));
		return -1;
	}

	len = FUNC3(&line, &line_len, vsig);
	FUNC0(vsig);
	err = -1;
	if (len <= 0) {
		FUNC4("Reading from /proc/version_signature failed: %s\n",
			 FUNC6(errno));
		goto errout;
	}

	ptr = FUNC7(line, ' ');
	if (!ptr) {
		FUNC4("Parsing /proc/version_signature failed: %s\n", line);
		goto errout;
	}

	err = FUNC5(ptr + 1, "%d.%d.%d",
		     &version, &patchlevel, &sublevel);
	if (err != 3) {
		FUNC4("Unable to get kernel version from /proc/version_signature '%s'\n",
			 line);
		goto errout;
	}

	*puint = (version << 16) + (patchlevel << 8) + sublevel;
	err = 0;
errout:
	FUNC2(line);
	return err;
}