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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(char **comm, pid_t pid)
{
	char *path;
	size_t size;
	int err;

	if (FUNC0(&path, "%d/%d/comm", FUNC3(), pid) == -1)
		return -ENOMEM;

	err = FUNC1(path, comm, &size);
	if (!err) {
		/*
		 * We're reading 16 bytes, while filename__read_str
		 * allocates data per BUFSIZ bytes, so we can safely
		 * mark the end of the string.
		 */
		(*comm)[size] = 0;
		FUNC4(*comm);
	}

	FUNC2(path);
	return err;
}