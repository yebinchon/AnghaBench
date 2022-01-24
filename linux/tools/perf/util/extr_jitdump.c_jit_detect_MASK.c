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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char**,int) ; 
 int verbose ; 

__attribute__((used)) static int
FUNC6(char *mmap_name, pid_t pid)
 {
	char *p;
	char *end = NULL;
	pid_t pid2;

	if (verbose > 2)
		FUNC0(stderr, "jit marker trying : %s\n", mmap_name);
	/*
	 * get file name
	 */
	p = FUNC4(mmap_name, '/');
	if (!p)
		return -1;

	/*
	 * match prefix
	 */
	if (FUNC3(p, "/jit-", 5))
		return -1;

	/*
	 * skip prefix
	 */
	p += 5;

	/*
	 * must be followed by a pid
	 */
	if (!FUNC1(*p))
		return -1;

	pid2 = (int)FUNC5(p, &end, 10);
	if (!end)
		return -1;

	/*
	 * pid does not match mmap pid
	 * pid==0 in system-wide mode (synthesized)
	 */
	if (pid && pid2 != pid)
		return -1;
	/*
	 * validate suffix
	 */
	if (FUNC2(end, ".dump"))
		return -1;

	if (verbose > 0)
		FUNC0(stderr, "jit marker found: %s\n", mmap_name);

	return 0;
}