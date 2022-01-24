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
 scalar_t__ EACCES ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 char* FUNC4 (scalar_t__) ; 

int FUNC5(char *path, bool quiet)
{
	int fd;

	fd = FUNC0(path);
	if (fd < 0) {
		if (!quiet)
			FUNC3("bpf obj get (%s): %s", path,
			      errno == EACCES && !FUNC2(FUNC1(path)) ?
			    "directory not in bpf file system (bpffs)" :
			    FUNC4(errno));
		return -1;
	}

	return fd;
}