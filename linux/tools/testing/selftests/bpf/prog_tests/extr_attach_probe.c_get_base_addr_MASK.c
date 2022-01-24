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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,size_t*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

ssize_t FUNC4() {
	size_t start;
	char buf[256];
	FILE *f;

	f = FUNC1("/proc/self/maps", "r");
	if (!f)
		return -errno;

	while (FUNC2(f, "%zx-%*x %s %*s\n", &start, buf) == 2) {
		if (FUNC3(buf, "r-xp") == 0) {
			FUNC0(f);
			return start;
		}
	}

	FUNC0(f);
	return -EINVAL;
}