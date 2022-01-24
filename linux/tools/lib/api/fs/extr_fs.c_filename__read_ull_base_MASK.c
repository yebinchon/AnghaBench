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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 unsigned long long ULLONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 unsigned long long FUNC3 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(const char *filename,
				   unsigned long long *value, int base)
{
	char line[64];
	int fd = FUNC1(filename, O_RDONLY), err = -1;

	if (fd < 0)
		return -1;

	if (FUNC2(fd, line, sizeof(line)) > 0) {
		*value = FUNC3(line, NULL, base);
		if (*value != ULLONG_MAX)
			err = 0;
	}

	FUNC0(fd);
	return err;
}