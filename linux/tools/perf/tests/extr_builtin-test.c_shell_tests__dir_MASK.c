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

/* Variables and functions */
 unsigned int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char const*) ; 

__attribute__((used)) static const char *FUNC5(char *path, size_t size)
{
	const char *devel_dirs[] = { "./tools/perf/tests", "./tests", };
        char *exec_path;
	unsigned int i;

	for (i = 0; i < FUNC0(devel_dirs); ++i) {
		struct stat st;
		if (!FUNC3(devel_dirs[i], &st)) {
			FUNC4(path, size, "%s/shell", devel_dirs[i]);
			if (!FUNC3(devel_dirs[i], &st))
				return path;
		}
	}

        /* Then installed path. */
        exec_path = FUNC2();
        FUNC4(path, size, "%s/tests/shell", exec_path);
	FUNC1(exec_path);
	return path;
}